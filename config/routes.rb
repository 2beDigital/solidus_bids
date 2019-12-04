Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :bids
    get :bids_by_products, to: 'bids#by_products'
    get :bids_by_user, to: 'bids#by_user'
    get :bids_accepted, to: 'bids#bids_accepted'
  end
  post :bids_create_or_update, to: 'bids#create_or_update'
end
