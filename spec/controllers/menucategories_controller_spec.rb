require 'rails_helper'

RSpec.describe MenusController do
  before :each do
    @category = create(:category)
    @another_category = create(:category)
    @menu = create(:menu)
  end

  describe 'GET #new' do
    it "assign a new menu for @menu"
    it "renders the :new template"
  end
end