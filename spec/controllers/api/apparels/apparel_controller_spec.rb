require 'rails_helper'
require 'pry'

RSpec.describe Api::V1::Apparels::ApparelsController do
  describe "GET index", type: :controller do
    it "returns all item brands" do
      item1 = FactoryBot.create(:item)
      apparel1 = FactoryBot.create(:apparel, item: item1)
      item2 = FactoryBot.create(:item)
      apparel2 = FactoryBot.create(:apparel, item: item2)
      item3 = FactoryBot.create(:item)
      apparel3 = FactoryBot.create(:apparel, item: item3)
      get :index, format: :json

      items = JSON.parse(response.body)
      expect(response).to have_http_status(:success)
      expect(items.count).to eq(3)
    end
  end

  describe "GET show", type: :controller do
    it "returns all item brands" do
      item1 = FactoryBot.create(:item)
      apparel1 = FactoryBot.create(:apparel, item: item1)

      get :show, id: 1,  format: :json
      items = JSON.parse(response.body)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET gender", type: :controller do
    it "returns all item brands" do
      item1 = FactoryBot.create(:item)
      apparel1 = FactoryBot.create(:apparel, item: item1)

      get :gender, gender: "female",  format: :json
      items = JSON.parse(response.body)
      expect(response).to have_http_status(:success)
      expect(items.last.to_a[-4]).to eq(["gender", "female"])
    end
  end

  describe "GET size", type: :controller do
    it "returns all item brands" do
      item1 = FactoryBot.create(:item)
      apparel1 = FactoryBot.create(:apparel, item: item1)

      get :size, size: "m",  format: :json
      items = JSON.parse(response.body)
      expect(response).to have_http_status(:success)
      expect(items.last.to_a[-3]).to eq(["size", "m"])
    end
  end


end
