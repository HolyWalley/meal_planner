# frozen_string_literal: true

class FoodInMealComponent < ViewComponent::Base
  def initialize(food_in_meal:, idx: 0)
    @idx = idx
    @food_in_meal = food_in_meal
  end

  def food
    @food_in_meal.food
  end

  def nutrients
    "#{ prots } / #{ fats } / #{ carbs }"
  end

  def calories
    number_with_precision(food.calories, precision: 2)
  end

  def prots
    number_with_precision(food.prots, precision: 2)
  end

  def carbs
    number_with_precision(food.carbs, precision: 2)
  end

  def fats
    number_with_precision(food.fats, precision: 2)
  end
end
