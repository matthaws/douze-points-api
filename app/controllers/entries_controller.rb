class EntriesController < ApplicationController
  def show
    @entry = Entry.includes(:contest).find(params[:id])
  end
end
