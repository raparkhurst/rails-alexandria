Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root URL -- for now setting to index, but will change once we get more stuff bolted on
  root    "books#index"


  # Books routes
  #get     "books"               => "books#index"
  #get     "books/:id"           => "books#show", as: "book"
  #get     "books/:id/edit"      => "books#edit", as: "edit_book"
  #patch   "books/:id"           => "books#update"
  resources :books


  # api routes
  get '/api/i18n/:locale' => 'api#i18n'

end
