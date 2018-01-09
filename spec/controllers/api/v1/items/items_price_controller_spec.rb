require 'rails_helper'
require 'pry'

RSpec.describe Api::V1::Items::ItemsPriceController do
  describe "GET index", type: :controller do
    it "returns all item based on specific price" do
      item1 = FactoryBot.create(:item)
      item2 = FactoryBot.create(:item)
      item3 = FactoryBot.create(:item, price:143)
      get :index, price: 149.00, format: :json

      items = JSON.parse(response.body)
      expect(response).to have_http_status(:success)
      expect(items.count).to eq(2)
      expect(items.last.to_a[4]).to eq(["price", 149.0])
    end
  end
end
