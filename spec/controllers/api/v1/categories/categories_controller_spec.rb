require 'rails_helper'
require 'pry'

RSpec.describe Api::V1::Categories::CategoriesController do
  describe "GET index", type: :controller do
    it "returns all categories" do
      category1 = FactoryBot.create(:category)
      category2 = FactoryBot.create(:category, name: "Ziba")
      get :index, format: :json

      items = JSON.parse(response.body)
      expect(response).to have_http_status(:success)
      expect(items.count).to eq(2)
    end
  end

  describe "GET show", type: :controller do
    it "returns specific category" do
      category1 = FactoryBot.create(:category)
      category2 = FactoryBot.create(:category, name: "Ziba")
      get :show,  id: category2.id, format: :json

      items = JSON.parse(response.body)
      expect(response).to have_http_status(:success)
      expect(items.first.last).to eq(category2.id)
    end
  end
end
