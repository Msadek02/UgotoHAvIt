Rails.application.routes.draw do
  get 'sub_categories/index'

  get 'sub_categories/new'

  get 'sub_categories/edit'

  get 'sub_categories/update'

  devise_for :users
root "homes#index"

resources :products
end
