require 'test_helper'

class CovidInfoGlobalControllerTest < ActionDispatch::IntegrationTest
  test "should get confirmed" do
    get covid_info_global_confirmed_url
    assert_response :success
  end

  test "should get recovered" do
    get covid_info_global_recovered_url
    assert_response :success
  end

  test "should get deaths" do
    get covid_info_global_deaths_url
    assert_response :success
  end

  test "should get daily" do
    get covid_info_global_daily_url
    assert_response :success
  end

end
