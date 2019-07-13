class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(blog_id: params[:blog_id])
    redirect_to blogs_path , notice: "#{favorite.blog.user.name}さんの投稿にいいね！をしました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to blogs_path , notice: "#{favorite.blog.user.name}さんの投稿のいいね！を取り消しました"
  end

  def index
    @favorites = Favorite.all.order(id: "DESC")
  end
end
