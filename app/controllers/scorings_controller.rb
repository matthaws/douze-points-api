class ScoringsController < ApplicationController

  def create
    @scoring = Scoring.new(scoring_params)
    if @scoring.save
      render json: "scorings/scoring", scoring: @scoring
    else
      render json: @scoring.errors.full_messages, status: 422
    end
  end

  def update
    @scoring = Scoring.find(params[:id])
    if @scoring.update(scoring_params)
      render json: "scorings/scoring", scoring: @scoring
    else
      render json: @scoring.errors.full_messages, status: 422
    end
  end

  def destroy
    @scoring = Scoring.find(params[:id])
    @scoring.destroy!
  end

  private

  def scoring_params
    params.require(:scoring).permit(:song_score,
                                    :dance_score,
                                    :cheese_score,
                                    :costume_score,
                                    :bonus_points,
                                    :bonus_comment,
                                    :score_note,
                                    :scoresheet_id,
                                    :entry_id,
                                    :id,
    )
  end

end
