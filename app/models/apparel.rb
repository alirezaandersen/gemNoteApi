require 'pry'
class Apparel < ActiveRecord::Base
  belongs_to :item


  def self.genders(gender)
    itemIds = self.select(:item_id).where(gender: gender).map{ |e| e.item_id}
    Item.joins(:apparels).select("apparels.*, items.*"). where(id: itemIds)
  end

  def self.size(size)
    itemIds = self.select(:item_id).where(size: size).map{ |e| e.item_id}
    Item.joins(:apparels).select("apparels.*, items.*"). where(id: itemIds)
  end

end
