class ReadersController < ApplicationController

  def index
    @user = User.find_by(id: params[:user_id])
    @readers = @user.readers.order(:username)
  end

  def show
    @user = User.find_by(id: params[:user_id])
    @reader = Reader.find_by(id: params[:id])
  end



end