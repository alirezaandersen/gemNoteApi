module Api
  module V1
    module Categories
      class CategoriesController < ApiController

        def index
          respond_with Category.all
        end

        def show
          respond_with Category.find(params[:id])
        end

        def random
          respond_with Category.all.sample
        end

      end
    end
  end
end
