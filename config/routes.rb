
 
Rails.application.routes.draw do
  get '/events', to: 'events#new'
  root 'events#new'
end
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

