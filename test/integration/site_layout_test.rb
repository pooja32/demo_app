require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
    test "layout links" do
    get root_path
    assert_template 'page/index'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", pages_login_path
    assert_select "a[href=?]", page_about_us_path
    assert_select "a[href=?]", credits_path
    get signup_path
    assert_select "title", full_title("Sign up")
  end
end
