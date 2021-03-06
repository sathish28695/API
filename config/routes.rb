Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      post '/login', to: 'users#login'
      get '/list_products', to: 'products#list_products'
      post '/:user_id/add_product', to: 'carts#add_product', constraints: { id: /\d.+/ }
      get '/:user_id/cart', to: 'carts#display_cart', constraints: { id: /\d.+/ }
    end
  end
end
