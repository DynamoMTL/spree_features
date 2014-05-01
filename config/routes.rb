Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :features do
      collection do
        post :update_positions
      end
      member do
        get :delete_feature_image
      end
    end
  end
end
