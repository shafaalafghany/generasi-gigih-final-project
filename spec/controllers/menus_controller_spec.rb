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

  describe 'POST #create' do
    context "with valid attributes" do
      it "saves the new menu in the database"
      it "redirects to customer#index"
    end

    context "with invalid attributes" do
      it "does not save the new customer in the database"
      it "re-renders the :new tempalte"
    end
  end

  describe 'GET #edit' do
    it "assigns the requested menu to @menu"
    it "renders the :edit template"
  end

  describe 'PATCH #update' do
    context "with valid attributes" do
      it "locates the requested @menu"
      it "changes @menu's attributes"
      it "redirects to the food"
    end

    context "With invalid attributes" do
      it "does not save the updated menu in the database"
      it "re-renders the edit template"
    end
  end

  describe 'DELETE #destroy' do
    it "deletes the food from the database"
    it "redirects to food#index"
  end
end