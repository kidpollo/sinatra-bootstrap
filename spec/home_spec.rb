require 'spec_helper'

feature "Home page" do
  background do
    visit('/')    
  end

  scenario "Should have avigation items" do
    page.should have_content("App Title")
    page.should have_content("Home")
  end
end
