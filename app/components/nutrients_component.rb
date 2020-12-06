# frozen_string_literal: true

class NutrientsComponent < ViewComponent::Base
  def initialize(prots:, fats:, carbs:)
    @prots = number_with_precision(prots, precision: 2)
    @fats = number_with_precision(fats, precision: 2)
    @carbs = number_with_precision(carbs, precision: 2)
  end

  def nutrients
    "#{ @prots } / #{ @fats } / #{ @carbs }"
  end
end
