module Api
  module V1
    module Images
      class ImagesController < ApiController

        def index
          #shows all image and item associations
          respond_with ItemImage.all
        end

        def show
          # show specific item images
          respond_with ItemImage.item_images(params[:id])
        end
      end
    end
  end
end
