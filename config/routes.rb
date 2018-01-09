Rails.application.routes.draw do

  namespace :api, defaults: {format: :json } do
    namespace :v1 do

      resources :items, only: [:index, :show], module: 'items' do

        collection do
          get '/find',          to: 'items#find'
          get '/random',        to: 'items#random'
          get '/brand',         to: 'items_brand#index'
          get '/:price/price',  to: 'items_price#index'
        end
          member do
          get '/information',   to: 'items#information'
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
      end

      resources :apparels, only: [:index, :show], module: 'apparels' do

        collection do
          get '/random',         to: 'apparels#random'
          get '/:gender/gender', to: 'apparels#gender'
          get '/:size/size',     to: 'apparels#size'
        end
      end

      resources :images, only: [:index, :show], module: 'images' do

      end

      resources :drinkwares, only: [:index, :show], module: 'drinkwares' do

        collection do
          get '/random',         to: 'drinkwares#random'
        end
      end
    end
  end
end
