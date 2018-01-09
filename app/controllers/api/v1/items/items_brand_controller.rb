module Api
  module V1
    module Items
      class ItemsBrandController < ApiController

        # returns all brands only
        def index
          respond_with Item.select('brand').distinct
        end

      end
    end
  end
end
