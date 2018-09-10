Rails.application.routes.draw do
  
  scope :api, defaults: {format: :json} do
    devise_for :customers, controllers: {
      sessions: 'customers/sessions'
    }
    devise_for :drivers, controllers: {
      sessions: 'drivers/sessions'
    }

    devise_scope :customer do
      get 'customers/current', to: 'customers/sessions#show'
    end

    devise_scope :driver do
      get 'drivers/current', to: 'drivers/sessions#show'
    end
    
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
