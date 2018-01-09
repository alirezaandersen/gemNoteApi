module Api
  module V1
    module Items
      class ItemsPriceController < ApiController

        def index
          respond_with Item.all.where(price: params[:price])
        end

      end
    end
  end
end
