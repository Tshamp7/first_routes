Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :users


 # Display index of all users
  get 'users' , to: 'users#index'
 # Persist user instance to db.
  post 'users', to: 'users#create'
 # Create a new user instance. 
  get 'users/new', to: 'users#new'
 # Display form to edit an existing user
  get 'users/:id/edit', to: 'users#edit'
 # Show instance of user
  get 'users/:id', to: 'users#show'
 # Persist edit to user to the db.
  patch 'users/:id', to: 'users#update'
 # Overwrite user instance with new data. 
  put 'users/:id', to: 'users#update'
 # Delete(destroy) user instance
  delete 'users/:id', to: 'users#destroy'
end
