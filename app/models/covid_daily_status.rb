class CovidDailyStatus < ApplicationRecord
  before_save :create_daily_increase

  private

  def create_daily_increase
    last_daily_status = CovidDailyStatus.last
    
    DailyIncrease.create(
      confirmed: confirmed - last_daily_status.confirmed,
      recovered: recovered - last_daily_status.recovered,
      deaths:    deaths - last_daily_status.deaths
    )
  end
end
