require 'rails_helper'

describe User do
	before { @user = FactoryGirl.build(:user) }
	subject { @user }
	# it { should validate_presence_of(:email) }
	# it { should validate_uniqueness_of(:email) }
	# it { should validate_confirmation_of(:password) }

	it { should respond_to(:email) }
	it { should respond_to(:password) }
	it { should respond_to(:password_confirmation) }
	it { should respond_to(:auth_token) }
	it { should validate_uniqueness_of(:auth_token) }

	it { should be_valid }

	describe "when email is not present" do
		before { @user.email = " " }
		it { should_not be_valid }
	end
end