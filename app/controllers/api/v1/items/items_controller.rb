module Api
  module V1
    module Items
    class ItemsController < ApiController

      #shows all items
      def index
        respond_with item.all
      end

      #shows specific item by id
      def show
        respond_with item.find(params[:id])
      end

      #shows specific item based on item_params
      def find
        respond_with item.find_by(item_params)
      end

      # shows all items with partical item_params
      def find_all
        respond_with item.where(item_params)
      end

      def random
        respond_with item.all.sample
      end

      private

      def item_params
        params.permit(:id, :name, :description, :brand, :price)
      end
      #params not needed for gets
    end
    end
  end
end
