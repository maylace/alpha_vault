require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET#show' do
    let(:user) { FactoryGirl.create(:user) }

    it 'assigns requested user to @user' do
      get :show, id: user
      expect(assigns(:user)).to eq(user)
    end

    it 'returns a successful 200 response' do
      get :show, id: user, format: :json
      expect(response).to be_success
    end

    it 'should render json of user' do
      get :show, id: user, format: :json
      user_response = JSON.parse(response.body)
      expect(user_response['email']).to eq(user.email)
    end
  end

  describe 'POST#create' do
    before(:each) do
      @user_attributes = FactoryGirl.attributes_for(:user)
      post :create, { user: @user_attributes }, format: :json
    end

    it 'renders json of the user created' do
      user_response = JSON.parse(response.body)
      expect(user_response['email']).to eq(@user_attributes[:email])
    end

    it 'should respond with status 201' do
      expect(response.status).to eq(201)
    end
  end

  describe 'DELETE#destroy' do
    before(:each) do
      @user = FactoryGirl.create(:user)
      delete :destroy, id: @user.id, format: :json
    end

    it 'should respond with 204' do
      expect(response.status).to eq(204)
    end
  en
ednd
