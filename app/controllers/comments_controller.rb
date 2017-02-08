class CommentsController < ApplicationController

  def index
    @piece = Piece.find(params[:piece_id])
    @comments = @piece.comments
  end

  def new
    @piece = Piece.find(params[:piece_id])
    @comment = @piece.comments.build
  end

  def show
    @piece = Piece.find(params[:piece_id])
    @comment = Comment.find(params[:id])
  end


  def create
    @piece = Piece.find(params[:piece_id])
    @comment = @piece.comments.create(comment_params)

    if @comment.save
      redirect_to piece_comments_path
    else
      render "root"
    end
  end



  def edit
    @piece = Piece.find(params[:piece_id])
    @comment = @piece.comments.find(params[:id])
  end

  def update
    @piece = Piece.find(params[:piece_id])
    @comment = @piece.comments.find(params[:id])

    if @comment.update(comment_params)
      redirect_to piece_comments_path
    else
      render "root"
    end
  end


  def destroy
    @piece = Piece.find(params[:piece_id])
    @comment = @piece.comments.destroy(params[:id])
      redirect_to piece_path(@piece)
  end


private
  # Only allow a trusted parameter "white list" through.
def comment_params
  params.require(:comment).permit(:body, :piece_id)
end


end
