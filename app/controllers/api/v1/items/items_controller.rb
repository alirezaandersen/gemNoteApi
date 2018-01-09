module Api
  module V1
    module Items
    class ItemsController < ApiController

      #shows all items
      def index
        respond_with Item.all
      end

      #shows specific item by id
      def show
        respond_with Item.find(params[:id])
      end

      #shows specific item based on item_params
      def find
        respond_with Item.find_by(item_params)
      end

      # # shows all items by specific brand
      # def find_all
      #   respond_with Item.all.where(item_params)
      # end

      def random
        respond_with Item.all.sample
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
