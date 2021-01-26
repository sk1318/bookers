Rails.application.routes.draw do
 root to: "books#home"
  post 'books' => 'books#create',as: 'create_book'
  get 'books' => 'books#index',as: 'books'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
