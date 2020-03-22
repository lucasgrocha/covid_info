class CovidInfoGlobalController < ApplicationController
  before_action :set_covid_global_request

  def confirmed
    @confirmed = @global_status.confirmed
  end

  def recovered
    @recovered = @global_status.recovered
  end

  def deaths
    @deaths = @global_status.deaths
  end

  private

  def set_covid_global_request
    @global_status = CovidStatus::GlobalCovidStatus.new
  end
end
