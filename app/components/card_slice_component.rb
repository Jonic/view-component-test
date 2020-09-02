class CardSliceComponent < ViewComponent::Base
  def initialize(heading: nil)
    @heading = heading
  end

  def heading?
    @heading.present?
  end
end
