require 'rails_helper'
RSpec.describe User, type: :model do
  before { @user = FactoryGirl.build(:user) }

  subject { @user }

  it { should respond_to :email }

  it { should respond_to :encrypted_password }

  it { should respond_to :login }

  it { should be_valid }
end
