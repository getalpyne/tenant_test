Rails.application.routes.draw do
  resources :invoices
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post 'tenant_switch', to: 'application#switch'
end
