require 'rails_helper'
require 'pry'

RSpec.describe Api::V1::Drinkwares::DrinkwaresController do
  describe "GET index", type: :controller do
    it "returns all drinkware items" do
      drinkware_item = FactoryBot.create(:item, name: "Whisky Tumbler", description: "best whisky ever", brand: "Kinto", price: 24.35)
      drinkware_item2 = FactoryBot.create(:item, name: "Tea Tumbler", description: "best tea ever", brand: "Kinto", price: 24.35)
      drinkware_item3 = FactoryBot.create(:item, name: "Water Tumbler", description: "best water ever", brand: "Kinto", price: 24.35)
      drinkware = FactoryBot.create(:drinkware, item_id: drinkware_item.id)
      drinkware2 = FactoryBot.create(:drinkware, item_id: drinkware_item2.id)
      drinkware3 = FactoryBot.create(:drinkware, item_id: drinkware_item3.id)

      get :index, format: :json

      items = JSON.parse(response.body)
      expect(response).to have_http_status(:success)
      expect(items.count).to eq(3)
    end
  end

  describe "GET show", type: :controller do
    it "returns specific drinkware item" do
      drinkware_item = FactoryBot.create(:item, name: "Whisky Tumbler", description: "best whisky ever", brand: "Kinto", price: 24.35)
      drinkware_item2 = FactoryBot.create(:item, name: "Tea Tumbler", description: "best tea ever", brand: "Kinto", price: 24.35)
      drinkware_item3 = FactoryBot.create(:item, name: "Water Tumbler", description: "best water ever", brand: "Kinto", price: 24.35)
      drinkware = FactoryBot.create(:drinkware, item_id: drinkware_item.id)
      drinkware2 = FactoryBot.create(:drinkware, item_id: drinkware_item2.id)
      drinkware3 = FactoryBot.create(:drinkware, item_id: drinkware_item3.id)

      get :show, id: drinkware2.id, format: :json

      expect(response).to have_http_status(:success)
    end
  end



end
