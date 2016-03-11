class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def create
    # puts Rails.application.config.action_mailer.smtp_settings
    @user = User.new(user_params)
    if @user.save
      # UserMailer.welcome_email(@user).deliver_now
      session[:user_id] = @user.id
      redirect_to user_path(id: @user.id)
    else
      @errors = @user.errors.full_messages
      render new_user_path
    end
  end

  private

  def user_params
    user_params = params.require(:user).permit(:firstname, :lastname, :username, :email, :password)
  end

end