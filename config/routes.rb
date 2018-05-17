Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :students
  resources :pdf, only: :show

  unless Rails.env.production?
    resources :applies
  end
end
