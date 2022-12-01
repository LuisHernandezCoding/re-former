class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Welcome to the Sample App!'
      redirect_to new_user_path
    else
      flash[:danger] = 'Invalid email/password combination'
      render :new, status: :unprocessable_entity, locals: { user: @user }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
