class CommentsController < ApplicationController

  def entry
    @entry = Entry.find(params[:id])
    comment = Comment.new(comment_params)
    comment.user = current_user
    comment.commentable = @entry
    if comment.save
      @entry = Entry.includes(:contest, :comments, :comment_users).find(params[:id])
      @contest = Contest.includes(:host_country, :entries, :winning_entry).find(@entry.contest.id)
      render '/entries/show'
    else
      render json: comment.errors.full_messages, status: 422
    end
  end



  private
  def comment_params
    params.require(:comment).permit(:parent_id, :body)
  end
end
