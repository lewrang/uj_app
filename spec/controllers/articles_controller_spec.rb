require "rails_helper"

describe ArticlesController do
  describe 'index' do
    it 'return home page' do
      @article1 = create(:article)
      @article2 = create(:article)
      get :index
      
      expect(response).to have_http_status(:success)
      expect(assigns(:articles).length).to eq 2
    end
  end
end