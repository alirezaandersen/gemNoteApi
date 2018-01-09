require 'rails_helper'
require 'pry'

RSpec.describe Api::V1::FoodBeverages::FoodBeveragesController do
  describe "GET index", type: :controller do
    it "returns all food_beverage items" do
      food_beverage_item = FactoryBot.create(:item, name: "Chocolate Bar", description: "choloate", brand: "Wonka", price: 24.35)
      food_beverage_item2 = FactoryBot.create(:item, name: "Sour Gummi", description: "to sour", brand: "Fishing", price: 24.35)
      food_beverage_item3 = FactoryBot.create(:item, name: "Chestnuts", description: "roasting on a fire", brand: "Kinto", price: 24.35)
      food_beverage = FactoryBot.create(:food_beverage, item_id: food_beverage_item.id)
      food_beverage2 = FactoryBot.create(:food_beverage, item_id: food_beverage_item2.id)
      food_beverage3 = FactoryBot.create(:food_beverage, item_id: food_beverage_item3.id)

      get :index, format: :json

      items = JSON.parse(response.body)
      expect(response).to have_http_status(:success)
      expect(items.count).to eq(3)
    end
  end

  describe "GET show", type: :controller do
    it "returns specific food_beverage item" do
      food_beverage_item = FactoryBot.create(:item, name: "Chocolate Bar", description: "choloate", brand: "Wonka", price: 24.35)
      food_beverage_item2 = FactoryBot.create(:item, name: "Sour Gummi", description: "to sour", brand: "Fishing", price: 24.35)
      food_beverage_item3 = FactoryBot.create(:item, name: "Chestnuts", description: "roasting on a fire", brand: "Kinto", price: 24.35)
      food_beverage = FactoryBot.create(:food_beverage, item_id: food_beverage_item.id)
      food_beverage2 = FactoryBot.create(:food_beverage, item_id: food_beverage_item2.id)
      food_beverage3 = FactoryBot.create(:food_beverage, item_id: food_beverage_item3.id)

      get :show, id: food_beverage2.id, format: :json

      expect(response).to have_http_status(:success)
    end
  end



end
