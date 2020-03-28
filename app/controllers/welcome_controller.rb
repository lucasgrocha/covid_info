class WelcomeController < ApplicationController
  before_action :set_covid_global_request

  def index
    @general_infos = @global_status.general.slice('confirmed', 'deaths', 'recovered')
    @daily_increase = DailyIncrease.last
  end

  private

  def set_covid_global_request
    @global_status = CovidStatus::GlobalCovidStatus.new
  end
end
