require 'rails_helper'

RSpec.describe MenusController do
  describe 'GET #index' do
    it "populates an array of all customers"
    it "renders the :index template"
  end

  describe 'GET #new' do
    it "assign a new menu for @menu"
    it "renders the :new template"
  end
end