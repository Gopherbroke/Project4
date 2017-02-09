class CommentsController < ApplicationController
  # before_action :set_post, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource  only: [:edit, :update, :destroy]


  def index
    @user = current_user
    @piece = Piece.find(params[:piece_id])
    @comments = @piece.comments
  end

  def new
    @user = current_user
    @piece = Piece.find(params[:piece_id])
    @comment = @piece.comments.build
  end

  def show
    @user = current_user
    @piece = Piece.find(params[:piece_id])
    @comment = Comment.find(params[:id])
  end


  def create
    @piece = Piece.find(params[:piece_id])
    @comment = @piece.comments.create(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to piece_path(@piece)
    else
      render "root"
    end
  end



  def edit
    @piece = Piece.find(params[:piece_id])
    @comment = Comment.find(params[:id])
    @comment.user_id = current_user.id
  end

  def update
    @comment.user_id = current_user.id
    @piece = Piece.find(params[:piece_id])
    @comment = @piece.comments.find(params[:id])

    if @comment.update(comment_params)
      redirect_to piece_path(@piece)
    else
      render "root"
    end
  end


  def destroy
    @user = current_user
    @piece = Piece.find(params[:piece_id])
    @comment = @piece.comments.destroy(params[:id])
      redirect_to piece_path(@piece)
  end


private
  # Only allow a trusted parameter "white list" through.
def comment_params
  params.require(:comment).permit(:body, :piece_id, :user_id)
end


end
