Rails.application.routes.draw do
  # scope "(:locale)", locale: /es|en/ do
    root 'home#index'
    resources :clientes
    resources :imagenes
    get 'home/informacion'
    get 'home/servicios'
    get 'home/search'
  # end
end
