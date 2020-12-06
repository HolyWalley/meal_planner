# frozen_string_literal: true

class MealReflex < ApplicationReflex
  def add_food(food_id, idx = 0)
    # use ViewComponent
    food = Food.find(food_id)
    morph "#nextFoodLine", render(partial: "meals/food", locals: { food: food, idx: idx })
  end
end
