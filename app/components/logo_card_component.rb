class LogoCardComponent < ViewComponent::Base
  include ViewComponent::Slotable

  attr_accessor(:card)
  with_collection_parameter(:card)
  with_slot(:button, class_name: "Button")
  with_slot(:header, class_name: "Header")
  with_slot(:mission_details, class_name: "MissionDetails")

  class Button < ViewComponent::Slot
    attr_accessor(:label)
    attr_accessor(:type)

    def initialize(data: {})
      @label = data[:label]
      @type = data[:type]
    end
  end

  class Header < ViewComponent::Slot
    attr_accessor(:text)

    def initialize(data: {})
      @highlight = data[:highlight]
      @text = data[:text]
    end

    def classes
      classes = ["c-logo-card__header"]
      classes << "c-logo-card__header--highlight" if @highlight
      classes.join(" ")
    end
  end

  class MissionDetails < ViewComponent::Slot
    attr_accessor(:age, :duration, :time_scale)

    def initialize(data: {})
      @age = data[:age]
      @duration = data[:time][:duration]
      @time_scale = data[:time][:scale]
    end
  end

  def initialize(card:, element: "li")
    @card = card
    @element = element

    @title = @card[:title]
    @label = @card[:label]
    @type = @card[:type]
    @icon = @card[:icon]
    @link = @card[:link]
    @description = @card[:description]
  end

  def class_with_label(base_class)
    [base_class, "#{base_class}--#{@label}"].join(" ")
  end

  def class_with_type(base_class)
    [base_class, "#{base_class}--#{@type}"].join(" ")
  end
end
