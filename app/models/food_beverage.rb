require 'pry'
class FoodBeverage < ActiveRecord::Base
  belongs_to :item


  def self.food_flavor(flavor)
    id = self.find_by(flavor).item_id
    Item.joins(:food_beverages).select("food_beverages.*, items.*").where(id: id)
  end
end
