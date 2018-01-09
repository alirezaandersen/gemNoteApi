module Api
  module V1
    module Drinkwares
      class DrinkwaresController < ApiController


        def index
          #shows all drinkware items
          respond_with Drinkware.all
        end

        def show
          # shows specific drinkware item by id
          respond_with
        end

        def random
          #shows random drinkware items
          repsond_with Drinkware.all.sample
        end

        


      end
    end
  end
end
