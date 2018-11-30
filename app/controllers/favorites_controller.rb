class FavoritesController < ApplicationController
  before_action :basic, except: [:index, :show]

  def index
    @favorites = Favorite.all
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.save
      flash[:success] = "投稿しました"
      redirect_to favorites_path
    else
      render 'new'
    end
  end

  def edit
    @favorite = Favorite.find(params[:id])
  end

  def update
    @favorite = Favorite.find(params[:id])
    if @favorite.update_attributes(favorite_params)
      flash[:success] = "編集しました"
      redirect_to @favorite
    else
      render 'edit'
    end
  end

  def destroy
    Favorite.find(params[:id]).destroy
    flash[:success] = "削除しました"
    redirect_to favorites_path
  end

  private

   def favorite_params
     params.require(:favorite).permit(:title, :content, :picture)
   end

end
