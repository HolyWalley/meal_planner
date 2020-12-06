# frozen_string_literal: true

class MealReflex < ApplicationReflex
  def add_food(food_id, idx = 0)
    food_in_meal = FoodsInMeal.new(food: Food.find(food_id))
    morph "#nextFoodLine", render(FoodInMealComponent.new(food_in_meal: food_in_meal, idx: idx), layout: false)
  end
end
