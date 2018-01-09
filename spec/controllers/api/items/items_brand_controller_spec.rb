require 'rails_helper'
require 'pry'

RSpec.describe Api::V1::Items::ItemsBrandController do
  describe "GET index", type: :controller do
    it "returns all item brands" do
      item = FactoryBot.create(:item)
      get :index, format: :json

      items = JSON.parse(response.body)
      expect(response).to have_http_status(:success)
      expect(item.brand).to eq("Patagonia")
    end
  end
end
