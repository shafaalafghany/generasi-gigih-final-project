require 'rails_helper'

RSpec.describe CustomersController do
  describe 'GET #index' do
    it 'populates an array of all customers'
    it 'renders the :index template'
  end

  describe 'GET #show' do
    it 'assigns the requested customer to @customer'
    it  "renders the :show template"
  end

  describe 'GET #new' do
    it 'assigns a new customer to @customer'
    it 'renders the :new template'
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'saves the new customer in the database'
      it 'redirects to customers#show'
    end
    
    context 'with invalid attributes' do
      it 'does not save the new customer in the database'
      it 're-renders the :new template'
    end
  end
end