# frozen_string_literal: true

class MealReflex < ApplicationReflex
  def add_food(food_id)
    food = Food.find(food_id)
    meal.foods_in_meals.create(food: food, food_grams: 100.0)
  end

  def delete_food(id)
    meal.foods_in_meals.find(id).destroy!
  end

  def meal
    @meal ||= Meal.find(params[:meal_id])
  end
end
