class CovidInfoCountryController < ApplicationController
  before_action :set_country
  before_action :set_covid_country_request

  def confirmed
    @confirmed = @country_status.confirmed
  end

  def recovered
    @recovered = @country_status.recovered
  end

  def deaths
    @deaths = @country_status.deaths
  end

  private

  def set_country
    @params_country = params.permit(:country)
  end

  def set_covid_country_request
    @country_status = CovidStatus::CountryCovidStatus.new(@params_country['country'])
  end
end
