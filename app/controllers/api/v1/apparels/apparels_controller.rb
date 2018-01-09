module Api
  module V1
    module Apparels
      class ApparelsController < ApiController

        def index
          #should show all apparel items only including Apparel and Item objects.
          respond_with Item.joins(:apparels).select("apparels.*, items.*")
        end

        def show
          #should show specific apparel item based on id only
          respond_with Item.joins(:apparels).select("apparels.*, items.*").where(id: params[:id])
        end

        def random
          #should show random apparel item
          respond_with Category.all.sample
        end

        def gender
          # shows all available genders
          respond_with Apparel.genders(params[:gender])
          #should show all apparel items based on gender
        end

        def size
          #should show all apparel items ideas based on size
          respond_with Apparel.size(params[:size])
        end

      end
    end
  end
end
