Rails.application.routes.draw do

  namespace :api, defaults: {format: :json } do
    namespace :v1 do

      resources :items, only: [:index, :show], module: 'items' do

        collection do
          get '/find',          to: 'items#find'
          # get '/find_all',      to: 'items#find_all'
          get '/random',        to: 'items#random'
          get '/brand',          to: 'items_brand#index'
        end
          member do
          get '/price',         to: 'items_price#index'
          get '/information',   to: 'items#information'
          # get '/range',         to: 'items_price#range'
        end

      end

      resources :categories, only: [:index, :show], module: 'categories' do

        collection do
          get '/random',          to: 'categories#random'
        end
      end

      resources :food_beverages, only: [:index, :show], module: 'food_beverages' do

        collection do
          get '/random',        to: 'food_beverages#random'
          get '/:flavor/flavor',         to: 'food_beverages#flavor'
        end

        # member do
        #
        # end
      end

      resources :apparels, only: [:index, :show], module: 'apparels' do

        collection do
          get '/random',         to: 'apparels#random'
          get '/:gender/gender', to: 'apparels#gender'
          get '/:size/size',     to: 'apparels#size'
        end

        # member do
        #
        # end 
      end


    end
  end
end
