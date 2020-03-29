require 'sidekiq/web'

Rails.application.routes.draw do
  root to: 'welcome#index'
  get 'update_increases', to: 'welcome#update_increases', as: 'update_increases'
  get 'country/confirmed/:country', to: 'covid_info_country#confirmed'
  get 'country/recovered/:country', to: 'covid_info_country#recovered'
  get 'country/deaths/:country', to: 'covid_info_country#deaths'

  get 'global/confirmed', to: 'covid_info_global#confirmed'
  get 'global/recovered', to: 'covid_info_global#recovered'
  get 'global/deaths', to: 'covid_info_global#deaths'
  get 'global/daily', to: 'covid_info_global#daily'
  

  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(username), ::Digest::SHA256.hexdigest(ENV["SIDEKIQ_USERNAME"])) &
      ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(password), ::Digest::SHA256.hexdigest(ENV["SIDEKIQ_PASSWORD"]))
  end if Rails.env.production?
  mount Sidekiq::Web, at: "/sidekiq"
end
