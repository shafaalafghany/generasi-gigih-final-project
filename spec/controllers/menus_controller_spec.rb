require 'rails_helper'

RSpec.describe MenusController do
  describe 'GET #index' do
    it "populates an array of all customers"  do
      nasi_gurita = create(:menu, menu_name: "Nasi Gurita")
      nasi_udang = create(:menu, menu_name: "Nasi Udang")
      nasi_cumi = create(:menu, menu_name: "Nasi Cumi")
      
      get :index
      expect(assigns(:menu)).to match_array([nasi_gurita, nasi_udang, nasi_cumi])
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #new' do
    it "assign a new menu for @menu" do
      get :new
      expect(assigns(:menu)).to be_a_new(Menu)
    end

    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'POST #create' do
    context "with valid attributes" do
      it "saves the new menu in the database" do
        expect {
          post :create, params: { menu: attributes_for(:menu) }
        }.to change(Menu, :count).by(1)
      end
      it "redirects to customer#index" do
        post :create, params: { menu: attributes_for(:menu) }
        expect(response).to redirect_to('/menus')
      end
    end

    context "with invalid attributes" do
      it "does not save the new customer in the database" do
        expect {
          post :create, params: { menu: attributes_for(:invalid_menu) }
        }.not_to change(Menu, :count)
      end
      it "re-renders the :new template" do
        post :create, params: { menu: attributes_for(:invalid_menu) }
        expect(response).to render_template :new
      end
    end
  end

  describe 'GET #edit' do
    it "assigns the requested menu to @menu" do
      menu = create(:menu)
      get :edit, params: { id: menu }
      expect(assigns(:menu)).to eq menu
    end
    it "renders the :edit template" do
      menu = create(:menu)
      get :edit, params: { id: menu }
      expect(response).to render_template :edit
    end
  end

  describe 'PATCH #update' do
    before :each do
      @menu = create(:menu)  
    end

    context "with valid attributes" do
      it "locates the requested @menu" do
        patch :update, params: { id: @menu, menu: attributes_for(:menu) }
        expect(assigns(:menu)).to eq @menu
      end

      it "changes @menu's attributes" do
        patch :update, params: { id: @menu, menu: attributes_for(:menu, menu_name: 'Nasi Gurita') }
        @menu.reload
        expect(@menu.menu_name).to eq('Nasi Gurita')
      end

      it "redirects to the food" do
        patch :update, params: { id: @menu, menu: attributes_for(:menu) }
        expect(response).to redirect_to @menu
      end
    end

    context "With invalid attributes" do
      it "does not save the updated menu in the database" do
        patch :update, params: { id: @menu, menu: attributes_for(:invalid_menu, menu_name: 'Nasi Gurita', menu_price: 'Test') }
        expect(@menu.menu_name).not_to eq('Nasi Gurita')
      end
      it "re-renders the edit template" do
        patch :update, params: { id: @menu, menu: attributes_for(:invalid_menu) }
        expect(assigns(:menu)).to eq @menu
        expect(response).to render_template :edit
      end
    end
  end

  describe 'DELETE #destroy' do
    before :each do
      @menu = create(:menu)
    end

    it "deletes the food from the database" do
      expect {
        delete :destroy, params: { id: @menu }
      }.to change(Menu, :count).by(-1)
    end
    it "redirects to food#index" do
      delete :destroy, params: { id: @menu }
      expect(response).to redirect_to menus_url
    end
  end

  describe 'menu validation for category' do
    it "is valid when every menu at least has 1 category" do
      menu = create(:menu)
      category = create(:category)
      menu_categories = create(:menu_category, menu_id: menu.id, category_id: category.id)

      menu_categories.valid?

      expect(menu_categories).to be_valid
    end

    it 'is valid when every menu has more than 1 category' do
      menu = create(:menu)
      category = create(:category)
      another_category = create(:category, category_name: 'Nasi Gurita')
      menu_categories = create(:menu_category, menu_id: menu.id, category_id: category.id)
      another_menu_categories = create(:menu_category, menu_id: menu.id, category_id: another_category.id)

      another_menu_categories.valid?


      expect(another_menu_categories).to be_valid
    end
  end
end