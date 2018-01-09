class Item < ActiveRecord::Base
  belongs_to :item_category
  belongs_to :item_image
  has_many :apparels
  has_many :food_beverages
  has_many :drinkwares
end
