class CreateApparels < ActiveRecord::Migration
  def change
    create_table :apparels do |t|
      t.text :gender
      t.text :size
      t.text :color
      t.integer :item_id
      t.timestamps null: false
    end
  end
end
