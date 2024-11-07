require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Sample app"
  end
  # here we are defining base_title

  test "shoudl get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success

    # assert_select looks for html tags element and matches it with provided criteria
    # here <title> tag must have This is home
    assert_select "h3", "nina"
    # ALWAYS REMEBER WE COMPARING THE VALUR INSIDE HTML TAGS
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get hello" do
    get static_pages_hello_url
    assert_response :success
  end
end
