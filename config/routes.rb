Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users do
    resources :items, only: [:index, :show, :new, :create, :edit, :update]
  end
  resources :items, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
