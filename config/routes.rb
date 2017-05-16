Rails.application.routes.draw do
  get '/contacts' => 'contacts#index'
  get '/contacts/new' => 'contacts#new'
  get '/contacts/:id' => 'contacts#show'
  post '/contacts' => 'contacts#create'
  get '/contacts/:id/edit' => 'contacts#edit'
  patch '/contacts/:id' => 'contacts#update'
  delete '/contacts/:id' => 'contacts#destroy'
  get '/johns' => 'contacts#john'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
