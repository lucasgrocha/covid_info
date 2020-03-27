require 'sidekiq-scheduler'

class DailyStatusJob
  include Sidekiq::Worker

  def perform
    general_status = CovidStatus::GlobalCovidStatus.new.general
    general_status.slice!('confirmed', 'deaths', 'recovered')

    CovidDailyStatus.create(
      confirmed: general_status.dig('confirmed', 'value'),
      recovered: general_status.dig('recovered', 'value'),
      deaths:    general_status.dig('deaths', 'value'))
  end
end
