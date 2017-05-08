Rails.application.routes.draw do
  get "/near", to: "proximity_list#index", :defaults => { :format => 'json' }
  root to: 'pois#index'
  resources "pois", :defaults => { :format => 'json' }
end
