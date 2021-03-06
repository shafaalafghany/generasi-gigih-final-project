require 'rails_helper'

RSpec.describe CustomersController do
  describe 'GET #index' do
    it 'populates an array of all customers' do
      ganda = create(:customer, customer_name: "Ganda")
      fachry = create(:customer, customer_name: "Fachry")
      shafa = create(:customer, customer_name: "Shafa")

      get :index
      expect(assigns(:customer)).to match_array([ganda, fachry, shafa])
    end
    it 'renders the :index template' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    it 'assigns the requested customer to @customer' do
      customer = create(:customer)
      get :show, params: { id: customer}
      expect(assigns(:customer)).to eq customer
    end

    it  "renders the :show template" do
      customer = create(:customer)
      get :show, params: { id: customer}
      expect(response).to render_template :show
    end
  end

  describe 'GET #new' do
    it 'assigns a new customer to @customer' do
      get :new
      expect(assigns(:customer)).to be_a_new(Customer)
    end
    it 'renders the :new template' do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'saves the new customer in the database' do
        expect {
          post :create, params: { customer: attributes_for(:customer) }
        }.to change(Customer, :count).by(1)
      end
      it 'redirects to customers#index' do
        post :create, params: { customer: attributes_for(:customer) }
        expect(response).to redirect_to('/customers')
      end
    end
    
    context 'with invalid attributes' do
      it 'does not save the new customer in the database' do
        expect {
          post :create, params: { customer: attributes_for(:invalid_customer) }
        }.not_to change(Customer, :count)
      end
      it 're-renders the :new template' do
        post :create, params: { customer: attributes_for(:invalid_customer) }
        expect(response).to redirect_to('/customers/new')
      end
    end
  end
end