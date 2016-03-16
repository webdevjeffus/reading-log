class LogsController < ApplicationController

  def show
    @user = User.find_by(id: params[:user_id])
    @log = Log.find_by(reader_id: params[:reader_id], roster_id: params[:roster_id])
  end

end