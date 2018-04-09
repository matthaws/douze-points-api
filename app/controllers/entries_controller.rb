class EntriesController < ApplicationController
  def show
    @entry = Entry.includes(:contest, :comments, :comment_users).find(params[:id])
    @contest = Contest.includes(:host_country, :entries, :winning_entry).find(@entry.contest.id)
  end
end
