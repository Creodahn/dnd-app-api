Rails.application.routes.draw do
  namespace :api do
    jsonapi_resources :art_objects
    jsonapi_resources :coins
    jsonapi_resources :dice
    jsonapi_resources :gemstones
    jsonapi_resources :magic_items
    jsonapi_resources :treasure_rules
  end
end
