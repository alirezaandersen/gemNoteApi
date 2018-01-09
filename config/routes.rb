Rails.application.routes.draw do

  namespace :api, defaults: {format: :json } do
    namespace :v1 do

      resources :items, only: [:index, :show], module: 'items' do

        collection do
          get '/find',          to: 'items#find'
          # get '/find_all',      to: 'items#find_all'
          get '/random',        to: 'items#random'
        end
          member do
          get '/price',         to: 'items_price#index'
          # get '/range',         to: 'items_price#range'
          get '/brand',          to: 'items_brand#index'
        end

      end

      resources :categories, only[:index, :show], module: 'categories' do

        collection do
          get 'random',          to: 'categories#random'
        end
      end

      
    end
  end
end
