require "rails_helper"

describe ArticlesController do
  before :each do
    @article1 = create(:article)
    @article2 = create(:article)
  end
  describe 'index' do
    it 'return home page' do
      get :index
      
      expect(response).to have_http_status(:success)
      expect(assigns(:articles).length).to eq 2
    end
  end
  
  describe 'show' do
    it 'return show page' do
      get :show, {id: @article1.to_param}
      
      expect(response).to have_http_status(:success)
      expect(assigns(:article)).to eq @article1
    end
  end
  
  describe 'new' do
    it 'return a new article' do
      @request.env["desive.mapping"] = Devise.mappings[:admin]
      sign_in FactoryGirl.create(:admin)
      get :new
      
      expect(response).to have_http_status(:success)
      expect(assigns(:article)).not_to eq nil
    end
  end
  
end