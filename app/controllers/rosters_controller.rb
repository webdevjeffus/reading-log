class RostersController < ApplicationController

  def index
    @user = User.find_by(id: params[:user_id])
    @rosters = @user.rosters.order(:name)
  end

  def show
    @roster = Roster.includes(:readers).find_by(id: params[:id])
    @user = @roster.user
  end

  def new
    @user = current_user
    @roster = @user.rosters.new
  end

  def create
    @user = User.find_by(id: params[:user_id])
    @roster = @user.rosters.build(roster_params)
    if @roster.save
      redirect_to user_roster_path(id: @roster.id)
    else
      @errors = @roster.errors.full_messages
      render new_user_roster_path
    end
  end


  private

  def roster_params
    roster_params = params.require(:roster).permit(:name, :description)
  end


end