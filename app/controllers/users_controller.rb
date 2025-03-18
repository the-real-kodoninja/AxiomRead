# app/controllers/users_controller.rb

class UsersController < ApplicationController
    before_action :authenticate_user!
  
    def show
      @user = User.find(params[:id])
    end
  
    def edit
      @user = current_user
    end
  
    def update
      @user = current_user
      if @user.update(user_params)
        redirect_to @user, notice: 'Profile updated successfully.'
      else
        render :edit
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :avatar)
    end
  end