FactoryBot.define do

  factory :item do
    name "Hybrid Jacket"
    description "New jacket"
    brand "Patagonia"
    price 149.00
  end

  factory :apparel do
    gender "female"
    size "m"
    color "black"
    assoication :items
  end

  factory :category do
    name "Apparel"
  end

  factory :images do
      url "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/000/899/full_size/patagonia_women_s_adze_hybrid_jacket___black.jpg?1510663389"
  end

  factory :item_image do
    association :item
    assoication :images
  end

  factory :item_category do
    association :item
    association :category
  end
end
