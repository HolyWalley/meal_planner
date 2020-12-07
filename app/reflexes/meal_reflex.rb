# frozen_string_literal: true

class MealReflex < ApplicationReflex
  def add_food(food_id)
    unless connection.instance_variable_defined?(:@meal)
      connection.instance_variable_set(:@meal, Meal.find(params[:id]))
    end

    food = Food.find(food_id)
    @meal = connection.instance_variable_get(:@meal)
    @meal.foods_in_meals.new(food: food, food_grams: 0.0)
  end

  def delete_food(idx)
    unless connection.instance_variable_defined?(:@meal)
      connection.instance_variable_set(:@meal, Meal.find(params[:id]))
    end

    @meal = connection.instance_variable_get(:@meal)

    # fix deletion for persisted meals
    foods_in_meals = @meal.foods_in_meals.reject.with_index { |_fm, i| i == idx.to_i }

    @meal.foods_in_meals = foods_in_meals
  end
end
