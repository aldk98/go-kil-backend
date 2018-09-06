Rails.application.routes.draw do
  
  scope :api, defaults: {format: :json} do
    devise_for :customers
    devise_for :drivers
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
