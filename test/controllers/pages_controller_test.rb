require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
    assert_select "img[style*='--image-fit']", minimum: 1
    assert_select ".project-carousel", minimum: 1
    assert_select ".project-card-link", minimum: 1
    assert_select ".project-carousel-dots", minimum: 1
    assert_select "a.nav-link[href='#about']", minimum: 1
    assert_select "section[id='about']", minimum: 1
  end
end
