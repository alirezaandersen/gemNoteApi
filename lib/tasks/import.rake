require 'csv'

namespace :import do

    desc "Import all Item data from csv file"

    task all:[
          :items,
          :categories,
          :images,
          :item_categories,
          :item_images,
          :apparels,
          :food_beverages,
          :drinkwares] do
  "Created Entire GemNote Database"
  end

  task items: :environment do
    items = "db/data/item.csv"
    CSV.foreach(items, headers: :true, header_converters: :symbol) do |row|
      Item.create!(id: row[:id],
      name: row[:name],
      description: row[:description],
      brand: row[:brand],
      price: row[:price])
      print '.'
    end
    puts "Created Items"
  end

  task categories: :environment do
    category = "db/data/category.csv"
    CSV.foreach(category, headers: :true, header_converters: :symbol) do |row|
      Category.create!(id: row[:id],
        name: row[:name])
      print '.'
    end
    puts "Created Categories"
  end

  task images: :environment do
    images = "db/data/image.csv"
    CSV.foreach(images, headers: :true, header_converters: :symbol) do |row|
      Image.create!(id: row[:id],
      url: row[:url])
      print '.'
    end
    puts "Created Image"
  end

  task item_categories: :environment do
    item_categories = "db/data/item_category.csv"
    CSV.foreach(item_categories, headers: :true, header_converters: :symbol) do |row|
      ItemCategory.create!(id: row[:id],
      item_id: row[:item_id],
      category_id: row[:category_id])
      print '.'
    end
    puts "Created Item Categories"
  end

  task item_images: :environment do
    item_images = "db/data/item_image.csv"
    CSV.foreach(item_images, headers: :true, header_converters: :symbol) do |row|
      ItemImage.create!(id: row[:id],
        item_id: row[:item_id],
        image_id: row[:image_id])
      print '.'
    end
    puts "Created Item Images"
  end

  task apparels: :environment do
    apparel = "db/data/apparel.csv"
    CSV.foreach(apparel, headers: :true, header_converters: :symbol) do |row|
      Apparel.create!(id: row[:id],
        gender: row[:gender],
        size: row[:size],
        color: row[:color],
        item_id: row[:item_id])
      print '.'
    end
    puts "Created Apparel"
  end

  task food_beverages: :environment do
    food_beverage = "db/data/food_beverage.csv"
    CSV.foreach(food_beverage, headers: :true, header_converters: :symbol) do |row|
      FoodBeverage.create!(id: row[:id],
      flavor: row[:flavor],
      item_id: row[:item_id])
      print '.'
    end
    puts "Created Food and Beverage"
  end

  task drinkwares: :environment do
    drinkware = "db/data/drinkware.csv"
    CSV.foreach(drinkware, headers: :true, header_converters: :symbol) do |row|
      Drinkware.create!(id: row[:id],
      item_id: row[:item_id])
      print '.'
    end
    puts "Created Drinkware"
  end
end
