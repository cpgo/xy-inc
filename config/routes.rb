Rails.application.routes.draw do
  get "/near", to: "proximity_list#index", :defaults => { :format => 'json' }

  resources "pois", :defaults => { :format => 'json' }, except: [:new, :edit], path: "poi"
end
