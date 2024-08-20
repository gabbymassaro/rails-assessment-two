Rails.application.routes.draw do
  resources :sweets
  resources :vendors
  resources :vendor_sweets
end
