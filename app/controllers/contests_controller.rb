class ContestsController < ApplicationController

  def show
    @contest = Contest.find_by(year: params[:year])
    if @contest
      render :show
    else
      render json: @contest.errors.full_messages, status: 404
    end
  end

  def index
    @contests = Contest.all
  end



end
