# frozen_string_literal: true

class FoodsInMeal < ApplicationRecord
  belongs_to :food
  belongs_to :meal

  validates :food_grams, presence: true, numericality: { greater_than: 0.0 }
end
