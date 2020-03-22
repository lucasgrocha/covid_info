Rails.application.routes.draw do
  get 'global/confirmed', to: 'covid_info_global#confirmed'
  get 'global/recovered', to: 'covid_info_global#recovered'
  get 'global/deaths', to: 'covid_info_global#deaths'
  get 'covid_info_global/daily'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
