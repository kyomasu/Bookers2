Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  resources :users, only: [:show, :edit, :update]
  get 'books/new'
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get '/home/about', to: 'homes#about'
  get '/home/users', to: 'users#index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  resources :books, only: [:new, :create, :index, :show, :destroy] do
  end
end