class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text  :name
      t.text  :description
      t.text  :brand
      t.integer :price
      t.timestamps null: false
    end
  end
end
