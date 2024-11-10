require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Quotes app"
  end

  # test "the truth" do
  #   assert true
  # end

  test "should get home" do
    get root_url
    # assert_select "p", "nina"
    assert_select "title", "Home | "+@base_title
    assert_response :success
  end

  test "should get hello" do
    get haaa_path
    assert_select "title", "Hello | "+@base_title
    assert_response :success
  end

  test "should get help" do
    get help_path
    assert_select "title", "Help | "+@base_title
    assert_response :success
  end

  test "should get about" do
    get about_path
    assert_select "title", "About | "+@base_title
    assert_response :success
  end

  test "should get contact" do
    get contact_path
    assert_select "title", "Contact | "+@base_title
    assert_response :success
  end
end
