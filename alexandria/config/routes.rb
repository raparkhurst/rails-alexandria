Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root URL -- for now setting to index, but will change once we get more stuff bolted on
  root    "books#index"


  # Books routes
  #get     "books"               => "books#index"
  #get     "books/:id"           => "books#show", as: "book"
  #get     "books/:id/edit"      => "books#edit", as: "edit_book"
  #patch   "books/:id"           => "books#update"

  get       "books/finishedReading"      => "books#finishedReading", as: "finished_reading"
  #get       "books/currentlyReading"     => "books#currentlyReading", as: "currently_reading"
  get       "books/allBooks"              => "books#allBooks", as: "all_books"
  resources :books


end
