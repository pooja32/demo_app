require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Index | Ruby on Rails Tutorial Sample App"

  end

  test "should get pages_login" do
    get :pages_login
    assert_response :success
    assert_select "title", "Login | Ruby on Rails Tutorial Sample App"

  end

  test "should get page_about_us" do
    get :page_about_us
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"

  end

  test "should get credits" do
    get :credits
    assert_response :success
    assert_select "title", "Sign Up | Ruby on Rails Tutorial Sample App"

  end

end
