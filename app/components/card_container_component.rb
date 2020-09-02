class CardContainerComponent < ViewComponent::Base
  def initialize(element: "ul", child_elements: "li", modifier: nil)
    @element = element
    @child_elements = child_elements
    @modifier = modifier
  end

  def classes
    classes = ["c-card-container"]
    classes << "c-card-container--#{@modifier}" if modifier?
    classes
  end

  def modifier?
    @modifier.present?
  end
end
