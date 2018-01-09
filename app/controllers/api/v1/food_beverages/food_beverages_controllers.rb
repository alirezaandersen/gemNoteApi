module Api
  module V1
    module FoodBeverages
      class FoodBeveragesController < ApiController

        def index
          #should show all food and/or beverage items only including Apparel and Item objects.
          respond_with FoodBeverage.all
        end

        def show
          #should show specific food and/or beverage item based on id only
          respond_with FoodBeverage.find(params[:id]).item
        end

        def random
          #should show random food and/or beverage item
          respond_with Category.all.sample
        end

        def flavor
          #should show all food and/or beverage items based on flavor
        end
      end
    end
  end
end
