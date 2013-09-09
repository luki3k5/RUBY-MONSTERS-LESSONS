require 'spec_helper'

describe ContactsController do
  describe "GET #show" do
    let(:contact) { Contact.create!(first_name:"FirstName") }

    it "responds successfully with an HTTP 200 status code" do
      get :show, id: contact.id
      expect(response).to be_success
    end

    it 'renders show template' do
      get :show, id: contact.id
      expect(response).to render_template('show')
    end
  end

  describe "GET #edit" do
    it 'renders the proper view' do 
      contact = Contact.create(first_name: "JG", last_name: "F")
      get :edit, id: contact.id
      expect(response.status).to eq 200
    end
  end

  describe "PUT #update" do
    it "should update user" do 
      @contact = Contact.create!(first_name: "Loly")
      put :update, id: @contact.id, contact: { first_name: "Dolores" } 
      contact_updated = Contact.find(@contact.id)
      expect(contact_updated.first_name).should eq("Dolores")
    end
  end

  describe "POST #create" do
    it 'should create new user' do
      post :create, contact: { first_name: "Mary", last_name: "Jones" }
      expect(response.status).to eq 302
      Contact.where(first_name: "Mary", last_name: "Jones").count.should eq 1
    end
  end

  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the posts into @contacts" do
      # NOTICE how we can create contacts inline (v1, v2 = 1, 2) 
      contact1, contact2 = Contact.create!(first_name: "FirstName"), Contact.create!(first_name: "FirstName")
      get :index

      expect(assigns(:contacts)).to match_array([contact1, contact2])
    end
  end
end
