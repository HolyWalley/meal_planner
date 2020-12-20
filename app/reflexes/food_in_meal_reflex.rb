# frozen_string_literal: true

class FoodInMealReflex < ApplicationReflex
  def change_weight(id, new_weight)
    meal.foods_in_meals.find(id).update!(food_grams: new_weight)
  end

  def meal
    @meal ||= Meal.find(params[:meal_id])
  end
end
