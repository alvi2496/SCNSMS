Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :students
  resources :addresses do
    collection do
      get :edit_addresses
      post :update_addresses
    end
  end
  resources :educational_qualifications
  resources :pdf, only: :show

  unless Rails.env.production?
    resources :applies
  end
end
