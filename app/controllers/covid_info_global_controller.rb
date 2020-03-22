class CovidInfoGlobalController < ApplicationController
  before_action :set_covid_global_request

  def confirmed
    @confirmed = @global_status.confirmed
  end

  private

  def set_covid_global_request
    @global_status = CovidStatus::GlobalCovidStatus.new
  end
end
