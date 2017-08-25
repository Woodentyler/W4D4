class SessionsController < ApplicationController

  def new
    unless current_user
      render :new
    else
      redirect_to cats_url
    end

  end

  def create
    @user = User.find_by_credentials(user_params[:username], user_params[:password])

    if @user
      login!(@user)
      redirect_to cats_url
    else
      flash.now[:errors] = 'Incorrect username or password'
      render :new
    end
  end

  def destroy
    if current_user
      logout!
      render :new
    else
      flash.now[:errors] = "Can\'t log out if no one is logged in"
      render :new
    end
  end

  private

  def user_params
    params.require(:users).permit(:username, :password)
  end

end
