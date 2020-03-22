Rails.application.routes.draw do
  get 'country/confirmed/:country', to: 'covid_info_country#confirmed'
  get 'country/recovered/:country', to: 'covid_info_country#recovered'
  get 'country/deaths/:country', to: 'covid_info_country#deaths'

  get 'global/confirmed', to: 'covid_info_global#confirmed'
  get 'global/recovered', to: 'covid_info_global#recovered'
  get 'global/deaths', to: 'covid_info_global#deaths'
  get 'global/daily', to: 'covid_info_global#daily'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
