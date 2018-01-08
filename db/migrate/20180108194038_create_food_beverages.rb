class CreateFoodBeverages < ActiveRecord::Migration
  def change
    create_table :food_beverages do |t|
      t.text :flavor
      t.integer :item_id
      t.timestamps null: false
    end
  end
end
