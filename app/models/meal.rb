# frozen_string_literal: true

class Meal < ApplicationRecord
  has_one_attached :photo

  attr_writer :calories

  has_many :foods_in_meals
  has_many :foods, through: :foods_in_meals

  accepts_nested_attributes_for :foods_in_meals, allow_destroy: true

  def calories
    foods_in_meals.sum do |fm|
      fm.food.calories * fm.food_grams / 100.0
    end
  end

  def prots
    foods_in_meals.sum do |fm|
      fm.food.prots * fm.food_grams / 100.0
    end
  end

  def carbs
    foods_in_meals.sum do |fm|
      fm.food.carbs * fm.food_grams / 100.0
    end
  end

  def fats
    foods_in_meals.sum do |fm|
      fm.food.fats * fm.food_grams / 100.0
    end
  end
end
