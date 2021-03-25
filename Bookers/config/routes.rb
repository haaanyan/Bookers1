Rails.application.routes.draw do
  root 'homes#top'
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show'
  get 'books/:id/edit' => 'books#edit'
  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy'
end
