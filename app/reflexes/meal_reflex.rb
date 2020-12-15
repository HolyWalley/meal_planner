# frozen_string_literal: true

class MealReflex < ApplicationReflex
  before_reflex :set_meal

  def add_food(food_id)
    food = Food.find(food_id)
    @meal.foods_in_meals.new(food: food, food_grams: 0.0)
  end

  def delete_food(idx)
    # fix deletion for persisted meals
    foods_in_meals = @meal.foods_in_meals.reject.with_index { |_fm, i| i == idx.to_i }

    @meal.foods_in_meals = foods_in_meals
  end

  def set_meal
    unless connection.instance_variable_defined?(:@meal)
      # TODO: fix for new
      meal = params[:id].present? ? Meal.find(params[:id]) : Meal.new
      connection.instance_variable_set(:@meal, meal)
    end

    @meal = connection.instance_variable_get(:@meal)
  end
end
