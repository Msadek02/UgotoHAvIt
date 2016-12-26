Rails.application.routes.draw do
  devise_for :users
root "homes#index"

resource :products
end
