# frozen_string_literal: true

class Food < ApplicationRecord
  # To global constants
  KCAL_IN_PROT = 4
  KCAL_IN_CARB = 4
  KCAL_IN_FAT = 9

  attr_writer :calories # To form object

  has_one_attached :photo

  has_many :foods_in_meals
  has_many :meals, through: :foods_in_meals

  # to validations/contracts
  validates :name, presence: true
  validates :prots, :carbs, :fats, presence: true, numericality: { greater_than_or_equal_to: 0.0 }

  # to form object
  def calories
    prots.to_f * KCAL_IN_PROT +
      carbs.to_f * KCAL_IN_CARB +
      fats.to_f * KCAL_IN_FAT
  end
end
