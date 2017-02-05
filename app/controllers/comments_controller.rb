class CommentsController < ApplicationController

  def index
    comments = Comment.all
  end

  def show
    comment = Comment.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end


  private
  # Only allow a trusted parameter "white list" through.
  def comment_params
    params.require(:comment).permit(:body, :piece_id, :user_id)
  end


end
