class CommentsController < ApplicationController
  before_action :basic, only: :destroy

  def create
    @favorite = Favorite.find(params[:favorite_id])
    @comment = @favorite.comments.create(comment_params)
    redirect_to favorite_path(@favorite)
  end

  def destroy
    @favorite = Favorite.find(params[:favorite_id])
    @comment = @favorite.comments.find(params[:id])
    @comment.destroy
    redirect_to favorite_path(@favorite)
  end

  private

   def comment_params
     params.require(:comment).permit(:commenter, :body)
   end
end
