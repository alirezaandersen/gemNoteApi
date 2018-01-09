require 'rails_helper'
require 'pry'

RSpec.describe Api::V1::Images::ImagesController do
  describe "GET index", type: :controller do
    it "returns association of images and items" do
      item1 = FactoryBot.create(:item)
      item2 = FactoryBot.create(:item)
      image1 = FactoryBot.create(:image)
      image_associations = FactoryBot.create(:item_image, item_id: item1.id, image_id: image1.id)
      image_associations = FactoryBot.create(:item_image, item_id: item2.id, image_id: image1.id)
      get :index, format: :json

      items = JSON.parse(response.body)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET show", type: :controller do
    it "returns association of images and items" do
      item1 = FactoryBot.create(:item)
      image1 = FactoryBot.create(:image)
      image_associations = FactoryBot.create(:item_image, item_id: item1.id, image_id: image1.id)
      get :show, id: 1, format: :json

      items = JSON.parse(response.body)
      expect(response).to have_http_status(:success)
    end
  end
end
