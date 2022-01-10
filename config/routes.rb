Rails.application.routes.draw do
  resources :budgets
  resources :debts
  resources :givings
  resources :expenses
  resources :incomes
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
