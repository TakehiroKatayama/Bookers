Rails.application.routes.draw do
  get 'top' => 'homes#top'

  root 'homes#top'

  get 'books/:id' => 'books#show', as: 'book'

  resources :books, except:[:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
