class ReadersController < ApplicationController

  def index
    @user = User.find_by(id: params[:user_id])
    @readers = @user.readers.order(:username)
  end

  def show
    @reader = Reader.includes(:logs).find_by(id: params[:id])
    @user = User.find_by(id: @reader.user_id)
  end

  def new
    @user = current_user
    @reader = @user.readers.new
  end

  def create
    @user = User.find_by(id: params[:user_id])
    @reader = @user.readers.build(reader_params)
    if @reader.save
      redirect_to user_reader_path(id: @reader.id)
    else
      @errors = @reader.errors.full_messages
      render new_user_reader_path
    end
  end


  private

  def reader_params
    reader_params = params.require(:reader).permit(:firstname, :lastname, :username, :reading_level, :password)
  end


end