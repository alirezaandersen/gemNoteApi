module Api
  module V1
    module Items
      class ItemPrice < ApiController

        def index
          respond_with Item.all.where(params[:price])
        end

        def range
          #can create range of price?
          # respond_with Item.where(params[:price])
        end
      end
    end
  end
end
