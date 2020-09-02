require "test_helper"

class ContainerComponentTest < ViewComponent::TestCase
  test "component renders contents" do
    render_inline(ContainerComponent.new) { "Whatevs" }
    assert_selector(".sl-container", text: "Whatevs")
  end
end
