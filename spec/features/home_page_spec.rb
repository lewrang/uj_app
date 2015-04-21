require 'rails_helper'

feature 'home_page' do
  describe 'user_visit_home_page', type: :feature do
    it 'user see home page' do
      visit '/'
      
      expect(page).to have_content('Welcome')
      expect(page).to have_content('Lorem ipsum')
      
    end
  end
end