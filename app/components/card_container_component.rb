class CardContainerComponent < ViewComponent::Base
  def initialize(
    element: "ul",
    modifier: nil
  )
    @element = element
    @modifier = modifier
  end

  def classes
    classes = ["c-card-container"]
    classes << "c-card-container--#{@modifier}" if @modifier.present?
    classes
  end
end
