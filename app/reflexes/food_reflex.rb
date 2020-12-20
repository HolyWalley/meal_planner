# frozen_string_literal: true

class FoodReflex < ApplicationReflex
  def search(name)
    @results = Food.where("name ILIKE ?", "%#{ name }%")
  end
end
