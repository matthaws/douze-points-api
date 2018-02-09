class ScoresheetsController < ApplicationController

  def index
    @scoresheets = User.find(params[:user_id]).scoresheets
  end

  def show
    @scoresheet = Scoresheet.includes(:scorings, :entries).find(params[:id])
  end

  def create
    @scoresheet = Scoresheet.new(scoresheet_params)
    if @scoresheet.save
      render :show
    else
      render json: @scoresheet.errors.full_messages, status: 422
    end
  end

  def update
    @scoresheet = Scoresheet.find(params[:id])
    if @scoresheet.update(scoresheet_params)
      render :show
    else
      render json: @scoresheet.errors.full_messages, status: 422
    end
  end

  def destroy
    @scoresheet = Scoresheet.find(params[:id])
    @scoresheet.destroy!
  end

  private

  def scoresheet_params
    params.require(:scoresheet).permit(:type, :user_id, :name, :contest_id)
  end

end
