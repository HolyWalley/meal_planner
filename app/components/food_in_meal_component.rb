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
    NutrientsComponent.new(prots: food.prots, fats: food.fats, carbs: food.carbs)
  end

  def calories
    number_with_precision(food.calories, precision: 2)
  end
end
