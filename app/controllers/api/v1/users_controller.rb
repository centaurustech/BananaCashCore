class Api::V1::UsersController < ApplicationController
	respond_to :json

	def show
		respond_with User.find(params[:id])
	end

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation,:email) 
  end 
end