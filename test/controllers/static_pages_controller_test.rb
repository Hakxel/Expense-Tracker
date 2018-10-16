require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Control de Gastos"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Inicio | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "Acerca de | #{@base_title}"
  end

end
