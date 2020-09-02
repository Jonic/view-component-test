require "test_helper"

class CardContainerComponentTest < ViewComponent::TestCase
  test "component renders contents" do
    render_inline(CardContainerComponent.new) { "Whatevs" }
    assert_selector(".c-card-container", text: "Whatevs")
  end

  test "component renders modifier class if specified" do
    render_inline(CardContainerComponent.new(modifier: "whatevs"))
    assert_selector(".c-card-container--whatevs")
  end
end
