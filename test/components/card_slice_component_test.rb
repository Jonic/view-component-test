require "test_helper"

class CardSliceComponentTest < ViewComponent::TestCase
  test "component renders contents" do
    render_inline(CardSliceComponent.new)
    assert_selector(".c-card-slice")
  end

  test "component renders heading if specified" do
    render_inline(CardSliceComponent.new(heading: "Whatevs Heading"))
    assert_selector(".c-card-slice__heading", text: "Whatevs Heading")
  end
end
