Rails.application.routes.draw do
  resources :budgets
  resources :debts
  resources :givings
  resources :expenses
  resources :incomes
  devise_for :users
  get 'new/debt/:budget_id' => 'debts#new', as: :budget_debt
  get 'new/income/:budget_id' => 'incomes#new', as: :budget_income
  get 'new/giving/:budget_id' => 'givings#new', as: :budget_giving
  get 'new/expense/:budget_id' => 'expenses#new', as: :budget_expense
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

end
