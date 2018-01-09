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

        #shows all information for item has new lines included for easy parsing
        def information
          respond_with Item.find(params[:id]).description
        end

        # shows all items and all associations
        # not sure if really neccessary seems redunant 
        # def show_all
        #   respond_with Item.all.where(item_params)
        # end

        def random
          respond_with Item.all.sample
        end
      end
    end
  end
end
