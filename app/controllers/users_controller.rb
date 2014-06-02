class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def show
  		@users = User.find(:all)
  	end

  	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to user_path
	end
end
