class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.float :prots, precision: 2, null: false
      t.float :fats, precision: 2, null: false
      t.float :carbs, precision: 2, null: false

      t.timestamps
    end
  end
end
