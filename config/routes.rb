Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  resources :cocktails, only: [ :new, :create, :show, :edit]
  # get 'cocktails', to: "cocktails#index"
  # get 'cocktail/new', to: 'cocktails#new'
  # get "cocktails/:id", to: "cocktails#show", as: :cocktail
  # post "cocktails", to: "cocktails#create"
  # get "cocktails/:id/edit", to: "cocktails#edit", as: :cocktail_edit
  # patch "cocktails/:id", to: "cocktails#update"
  # delete "cocktails/:id", to: "cocktails#destroy"
end
