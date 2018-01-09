module Api
  module V1
    module Apparels
      class ApparelsController < ApiController

        def index
          #should show all apparel items only including Apparel and Item objects.
          respond_with Apparel.all
        end

        def show
          #should show specific apparel item based on id only
          respond_with Category.find(params[:id])
        end

        def random
          #should show random apparel item
          respond_with Category.all.sample
        end

        def gender
          #should show all apparel items based on gender
        end

        def size
          #should show all apparel items ideas based on size
        end

        def find
          #should show specific apparel items based on proper full param
        end
      end
    end
  end
end
