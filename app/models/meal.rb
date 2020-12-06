# frozen_string_literal: true

class Meal < ApplicationRecord
  has_one_attached :photo

  attr_accessor :calories

  has_many :foods_in_meals
  has_many :foods, through: :foods_in_meals

  accepts_nested_attributes_for :foods_in_meals
end
