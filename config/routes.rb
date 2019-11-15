Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:new, :index, :show, :create, :destroy] do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :doses, only: :destroy
  resources :reviews, only: [:destroy, :edit, :update]

  # get 'cocktails', to: 'cocktails#index', as: 'cocktails'
  # get 'cocktails/new', to: 'cocktails#new', as: 'new_cocktail'
  # get 'cocktails/:id', to: 'cocktails#show', as: 'cocktail'
  # post 'cocktails', to: 'cocktails#create'
end
