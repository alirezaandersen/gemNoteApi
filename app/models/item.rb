class Item < ActiveRecord::Base
  belongs_to :item_category
  has_many :item_images
  has_many :apparels
  has_many :food_beverages
  has_many :drinkwares
end
