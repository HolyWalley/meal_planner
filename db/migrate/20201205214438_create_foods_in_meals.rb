class CreateFoodsInMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :foods_in_meals do |t|
      t.belongs_to :food
      t.belongs_to :meal

      t.float :food_grams, null: false

      t.timestamps
    end
  end
end
