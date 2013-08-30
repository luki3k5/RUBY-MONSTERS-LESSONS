class ContactsController < ApplicationController
  # this will render by default index.html.erb!
  # because this is how cool rails is by default 
  def index
    @contacts = Contact.page params[:page] # @contacts variable gets passed to index.html.erb
  end

  # this will by default render views with the action's name 
  # (in this case show.html.erb)
  def show
    # params[:id] is what we pass from the browser url (because of what we have in routes.rb) 
    # i.e. http://server.com/contact/1 maps :id to 1
    @contact = Contact.find(params[:id]) # singular contact is passed to the show.html.erb
  end

  # method for presenting the form for adding new contact
  def new
    @contact = Contact.new 
  end

  # this is where we will actually create the contact based on the passed data
  def create
    Contact.create(params[:contact])
    redirect_to contacts_path
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])
      redirect_to :action => 'show', :id => @contact
    else
      redirect_to contacts_path
    end
  end 

  def destroy
    Contact.find(params[:id]).destroy
    redirect_to contacts_path
  end
end 
