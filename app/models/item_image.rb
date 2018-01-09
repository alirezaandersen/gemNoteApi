class ItemImage < ActiveRecord::Base
  has_many :items
  has_many :images


  def self.item_images(id)
    item_images_ids = self.where(item_id: id).map {|e| e.image_id }
    Image.where(id: item_images_ids)
  end
end
