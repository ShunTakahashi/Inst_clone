class BlogsController < ApplicationController

  before_action :set_blog,only:[:edit,:update,:show,:destroy]

  def index
    @blogs = Blog.all.order(id: "DESC")
    @favorites = Favorite.all.order(id: "DESC")
  end

  def new
    if params[:back]
      @blog = Blog.new(blog_params)
    else
      @blog = Blog.new
    end
  end

  def show
    @favorite = current_user.favorites.find_by(blog_id: @blog.id)
  end

  def create
    @blog = current_user.blogs.build(blog_params)
    if @blog.save
      redirect_to blogs_path,notice:"投稿が完了しました。"
    else
      render new_blog_path
    end
  end

  def confirm
    @blog = current_user.blogs.build(blog_params)
    render :new if @blog.invalid?
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path,notice: "投稿を削除しました。"
  end

  def update
    if @blog.update(blog_params)
      redirect_to blogs_path,notice: "編集が完了しました"
    else
      render 'edit'
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:content,:image,:image_cache)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

end
