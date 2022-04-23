require 'rails_helper'

RSpec.describe MenusController do
  before :each do
    @category = create(:category)
    @menu = create(:menu)
  end

  describe 'GET #new' do
    it "assign a new menu categories for @menu_categories"
    it "renders the :new template"
  end

  describe 'POST #create' do
    context "with valid attributes" do
      it "saves the new menu in the database"
      it "re-renders the :new template"
    end

    context "with invalid attributes" do
      it "does not save the new customer in the database"
    end
  end
end