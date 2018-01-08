class CreateDrinkwares < ActiveRecord::Migration
  def change
    create_table :drinkwares do |t|
      t.integer :item_id
      t.timestamps null: false
    end
  end
end
