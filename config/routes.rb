Rails.application.routes.draw do
  # scope "(:locale)", locale: /es|en/ do
    root 'home#index'
    resources :clientes, only: [:index, :new, :create]
    resources :imagenes
  # end
end
