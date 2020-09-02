class IconComponent < ViewComponent::Base
  def initialize(name:)
    @name = name
  end

  def file_name
    "icons/#{@name}.svg"
  end
end
