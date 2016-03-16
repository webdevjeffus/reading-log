class RostersController < ApplicationController

  def index
    @user = User.find_by(id: params[:user_id])
    @rosters = @user.rosters.order(:name)
  end

  def show
    @user = User.find_by(id: params[:user_id])
    @roster = Roster.includes(:readers).find_by(id: params[:id])
  end

  # def new
  #   @user = User.find_by(id: params[:user_id])
  #   @reader = @user.readers.new
  # end

  # def create
  #   @user = User.find_by(id: params[:user_id])
  #   @reader = @user.readers.build(reader_params)
  #   if @reader.save
  #     redirect_to user_reader_path(id: @reader.id)
  #   else
  #     @errors = @reader.errors.full_messages
  #     render new_user_reader_path
  #   end
  # end


  private

  def roster_params
    roster_params = params.require(:roster).permit(:name, :description)
  end


end