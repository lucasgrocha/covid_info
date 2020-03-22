require 'test_helper'

class CovidInfoCountryControllerTest < ActionDispatch::IntegrationTest
  test "should get confirmed" do
    get covid_info_country_confirmed_url
    assert_response :success
  end

  test "should get recovered" do
    get covid_info_country_recovered_url
    assert_response :success
  end

  test "should get deaths" do
    get covid_info_country_deaths_url
    assert_response :success
  end

  test "should get daily" do
    get covid_info_country_daily_url
    assert_response :success
  end

end
