Rails.application.routes.draw do
  resources :budgets
  resources :debts
  resources :givings
  resources :expenses
  resources :incomes
  devise_for :users
  get 'new/:budget_id' => 'debts#new', as: :budget_debt
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

end
