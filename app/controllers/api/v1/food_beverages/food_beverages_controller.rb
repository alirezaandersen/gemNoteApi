module Api
  module V1
    module FoodBeverages
      class FoodBeveragesController < ApiController

        def index
          #should show all food and/or beverage items only including Apparel and Item objects.
          respond_with Item.joins(:food_beverages).select("food_beverages.*, items.*")
          # respond_with Item.joins(:food_beverages)
        end

        def show
          #should show specific food and/or beverage item based on id only
          respond_with Item.joins(:food_beverages).select("food_beverages.*, items.*").where(id: params[:id])
          # respond_with FoodBeverage.find(params[:id]).item
        end

        def random
          #should show random food and/or beverage item
          respond_with Category.all.sample
        end

        def flavor
          #should show food and/or beverage items based on flavor
          respond_with FoodBeverage.food_flavor(flavor: params[:flavor])
        end

        def find_all
          #should show specific food and/or beverage item based on spefic flavors
        end
      end
    end
  end
end
