Rails.application.routes.draw do
  scope "(:locale)", locale: /es|en/ do
    root 'home#index'
    resources :clientes
  end
end
