require 'rails_helper'

feature 'articles' do
    before :each do
      @article = create(:article)
      @article2 = create(:article)
  end
  
  describe 'user_visit_articles_page', type: :feature do
    it 'user see list of articles' do
      visit articles_path
      
      expect(page).to have_content('Articles')
      expect(page).to have_content(@article.title)
      expect(page).to have_content(@article2.title)
    end

    it 'user create a new article' do
      visit articles_path
      
      click_link('New')
      expect(page).to have_content('You are not authorized to access this page.')
      expect(page).not_to have_content(@article.title)
      expect(page.current_url).to eq 'http://www.example.com/'
    end
  end
end