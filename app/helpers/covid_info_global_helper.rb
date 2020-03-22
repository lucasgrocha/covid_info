module CovidInfoGlobalHelper
  def parse_time(date)
    Time.at(date.to_i / 1000).strftime('%d/%m/%Y %H:%M:%S')
  end
end
