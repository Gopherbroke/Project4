class CommentsController < ApplicationController

  def index
    @comments = Comment.all
    #@comments = @piece.comments.order(created_at: :desc)
  end

  def new
    @comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:comment_id])
  end


  def create
    @piece = Piece.find(params[:piece_id])
    @comment = @piece.comments.new(comment_params)

    if @comment.save
      render "index", :alert => 'Your book was found!'
    else
      render "new", :alert => 'Your book was not found!'
    end

  end


  def update
    @comment = Comment.find params[:id]

    if @comment.update(comment_params)
        redirect_to piece_path @comment.piece_id
    else
        render 'edit'
    end
  end

  def destroy
  end


private
  # Only allow a trusted parameter "white list" through.
def comment_params
  params.require(:comment).permit(:body, :piece_id)
end


end