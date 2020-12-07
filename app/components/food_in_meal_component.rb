# frozen_string_literal: true

class FoodInMealComponent < ViewComponent::Base
  def initialize(form:)
    @form = form
    @food_in_meal = form.object
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
