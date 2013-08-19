AddressBook::Application.routes.draw do
  # "http://xyz.com/"
  root to: "home#hello"

  resources :contacts#, only: [:show, :index]

   #this is another way of defining above root for all the contacts
   
  #get '/contacts' => "contacts#index", as: :contacts

   #creating 
   #display new contact form
  #get '/contacts/new' => "contacts#new", as: :new_contact
   #submit new contact data
  #post '/contacts' => "contacts#create", as: :create_contact

   #editing 
   #display form
  #get "/contacts/edit/:id" => "contacts#edit", as: :edit_contact
   #sumbit form that MODIFIES existing model
  #put "/contacts/update/:id" => "contacts#update", as: :update_contact

   #destroy/delete the contacts from my address book 
  #delete "/contacts/:id" => "contacts#delete", as: :delete_contact

   #http://whatever.com/contacts/12 
   #ORDER OF ROUTES MATTERS !!! 
  #get '/contacts/:id' => "contacts#show", as: :show_contact
end
