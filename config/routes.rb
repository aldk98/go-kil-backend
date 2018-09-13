Rails.application.routes.draw do
  scope :api, defaults: {format: :json} do
    devise_for :users, controllers: {sessions: 'users/sessions'}
    devise_scope :user do
      get 'users/current', to: 'users/sessions#show'
    end
    # post 'orders', to:'users/orders#create'
    # get 'orders/:id', to:'users/orders#show'
    # delete 'orders/:id', to:'users/orders#delete'
    # update 'orders', 
    scope module: 'users/customer', path: 'users/customer' do
      resources :orders
      get 'orders/ongoing', to:'orders#ongoing_order'
    end
    scope module: 'users/driver', path: 'users/driver' do
      resources :orders
      get '/orders/get_order', to: 'orders#get_order'
      get 'orders/ongoing', to:'orders#ongoing_order'
      # driver cant delete order
  end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
