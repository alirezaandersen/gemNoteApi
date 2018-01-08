require 'csv'
require 'bigdecimal'

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
    items = "db/data/items.csv"
    CSV.foreach(items, headers: :true, header_converters: :symbol) do |row|
      Item.create!(row.to_h)
      print '.'
    end
    puts "Created Items"
  end

  task categories: :environment do
    items = "db/data/category.csv"
    CSV.foreach(items, headers: :true, header_converters: :symbol) do |row|
      Category.create!(row.to_h)
      print '.'
    end
    puts "Created Categories"
  end

  task images: :environment do
    items = "db/data/image.csv"
    CSV.foreach(items, headers: :true, header_converters: :symbol) do |row|
      Image.create!(row.to_h)
      print '.'
    end
    puts "Created Image"
  end

  task item_categories: :environment do
    items = "db/data/item_category.csv"
    CSV.foreach(items, headers: :true, header_converters: :symbol) do |row|
      ItemImage.create!(row.to_h)
      print '.'
    end
    puts "Created Item Categories"
  end

  task item_images: :environment do
    items = "db/data/item_image.csv"
    CSV.foreach(items, headers: :true, header_converters: :symbol) do |row|
      ItemImage.create!(row.to_h)
      print '.'
    end
    puts "Created Item Images"
  end

  task apparels: :environment do
    items = "db/data/apparel.csv"
    CSV.foreach(items, headers: :true, header_converters: :symbol) do |row|
      ItemImage.create!(row.to_h)
      print '.'
    end
    puts "Created Apparel"
  end

  task food_beverages: :environment do
    items = "db/data/food_beverage.csv"
    CSV.foreach(items, headers: :true, header_converters: :symbol) do |row|
      ItemImage.create!(row.to_h)
      print '.'
    end
    puts "Created Food and Beverage"
  end

  task drinkwares: :environment do
    items = "db/data/drinkware.csv"
    CSV.foreach(items, headers: :true, header_converters: :symbol) do |row|
      ItemImage.create!(row.to_h)
      print '.'
    end
    puts "Created Drinkware"
  end
end
