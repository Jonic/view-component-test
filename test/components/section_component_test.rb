require "test_helper"

class SectionComponentTest < ViewComponent::TestCase
  test "component renders contents" do
    render_inline(SectionComponent.new) { "Whatevs" }
    assert_selector(".sl-section", text: "Whatevs")
  end
end
