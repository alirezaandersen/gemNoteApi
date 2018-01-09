require 'rails_helper'
require 'pry'

RSpec.describe Api::V1::Items::ItemsController do
  describe "GET index", type: :controller do
    it "returns all items" do
      item = FactoryBot.create(:item)
      item1 = FactoryBot.create(:item)
      item2 = FactoryBot.create(:item)
      get :index, format: :json

      items = JSON.parse(response.body)

      expect(response).to have_http_status(:success)
      expect(Item.count).to eq(3)
    end
  end

    describe "GET #show", type: :controller do
    it "returns one specific item" do
      items = FactoryBot.create(:item)
      get :show, id: items.id, format: :json

      item = JSON.parse(response.body)

      expect(response).to have_http_status(:success)
      expect(Item.last.price).to eq(149.00)
    end
  end

  describe "Get information", type: :controller do
  it "can find item based on match query" do
    items = FactoryBot.create(:item)
    get :information, id: items.id, format: :json

    expect(response).to have_http_status(:success)
  end
end

end
