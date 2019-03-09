Rails.application.routes.draw do
  namespace :api do
    jsonapi_resources :art_objects
    jsonapi_resources :coins
    jsonapi_resources :dice
    jsonapi_resources :dice_calculations
    jsonapi_resources :gemstones
    jsonapi_resources :magic_items
    jsonapi_resources :races
    jsonapi_resources :race_names
    jsonapi_resources :race_traits
    jsonapi_resources :treasure_rules
    jsonapi_resources :treasure_rule_sets
  end
end
