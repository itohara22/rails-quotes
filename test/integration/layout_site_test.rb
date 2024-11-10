require "test_helper"

class LayoutSiteTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "layout navlinks" do
    get root_path
    assert_select "a[href=?]", "/"
    assert_select "a[href=?]", "/hello"
    assert_select "a[href=?]", "/help"
    assert_select "a[href=?]", "/contact"
    assert_select "a[href=?]", "/about"

    # TO CHECK THE RENDERED VIEW TEMPLATE
    assert_template "static_pages/home"
  end
end
