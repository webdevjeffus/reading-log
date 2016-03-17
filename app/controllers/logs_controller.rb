class LogsController < ApplicationController

  def show
    @user = User.find_by(id: params[:user_id])
    @log = Log.find_by(reader_id: params[:reader_id], roster_id: params[:roster_id])
  end

  def new
    @roster = Roster.find_by(id: params[:roster_id])

    # TODO: Refactor this out to a model (probably roster, since we are finding readers available for a given roster)
    readers = Reader.where(user_id: @roster.user_id).order(:username)
    @readers = []
    readers.each do |reader|
      @readers.push reader unless Log.find_by(roster: @roster, reader: reader)
    end

    @log = @roster.logs.new
  end

  def create
    @log = Log.new(log_params)
    @log.reader = Reader.find_by(id: params[:reader_id])

    if @log.save
      redirect_to roster_path(id: @log.roster_id)
    else
      @errors = @log.errors.full_messages
      render new_logs_path
    end
  end


  private

  def log_params
    log_params = params.require(:log).permit(:reader, :comment, :roster_id )
  end

end