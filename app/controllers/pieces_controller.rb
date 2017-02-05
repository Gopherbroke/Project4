class PiecesController < ApplicationController

  def index
    pieces = Piece.all
  end

  def show
    piece = Piece.find(params[:id])
  end



  private
    # Only allow a trusted parameter "white list" through.
    def piece_params
      params.require(:piece).permit(:name, :type, :description, :price)
    end
end
