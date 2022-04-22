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
end