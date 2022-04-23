require 'rails_helper'

RSpec.describe MenusController do
  before :each do
    @category = create(:category)
    @another_category = create(:category)
    @menu = create(:menu)
  end
end