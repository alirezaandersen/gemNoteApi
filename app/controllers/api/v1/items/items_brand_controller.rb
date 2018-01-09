module Api
  module V1
    module Items
      class ItemsBrandController < ApiController
        # GET /api/v1/items/most_revenue?quantity=x
        # returns all items based on brand
        def index
          respond_with Item.all.where(params[:brand])
        end

      end
    end
  end
end
