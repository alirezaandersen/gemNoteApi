class ItemImage < ActiveRecord::Base
  has_many :items
  has_many :images
  
end
