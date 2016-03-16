class ReadersController < ApplicationController

  def index
    @user = User.find_by(id: params[:user_id])
    @readers = @user.readers.order(:username)
  end

  def show
    @user = User.find_by(id: params[:user_id])
    @reader = Reader.find_by(id: params[:id])
  end

  def new
    @user = User.find_by(id: params[:user_id])
    @reader = @user.readers.new
  end


  private

  def reader_params
    reader_params = params.require(:reader).permit(:firstname, :lastname, :username, :reading_level, :password)
  end


end