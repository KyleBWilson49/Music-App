class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

    if user.nil?
      flash.now[:errors] = ["Incorrect Login Information"]
      @user = User.new
      render :new
    else
      login_user!(user)
      redirect_to bands_url
    end
  end

  def destroy
    logout_user!
    redirect_to new_session_url
  end
end
