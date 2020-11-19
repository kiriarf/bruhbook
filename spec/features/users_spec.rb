require 'rails_helper'

RSpec.feature "Users", type: :feature do
  context "create new user" do
    scenario "should be successful" do
      visit new_user_path
      within('form') do
        fill_in "user_name", with: "Bob Bob"
        fill_in "user_email",	with: "test@example.com" 
        fill_in "user_email_confirmation",	with: "test@example.com" 
        fill_in "user_password",	with: "123" 
        fill_in "user_password_confirmation",	with: "123"  
      end

      click_button "Create User"
      expect(page).to have_content("User was successfully created")
    end
  end
end