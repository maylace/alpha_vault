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
end
