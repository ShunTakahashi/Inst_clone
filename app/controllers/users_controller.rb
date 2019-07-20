class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path , notice: "新規登録が完了しました"
    else
      render 'index'
    end
  end

  def show
    @user = User.find(params[:id])
    @blogs = current_user.blogs.all.order(id: "DESC")
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to edit_user_path, notice: "編集が完了しました"
    else
      render 'edit'
    end
  end

  def favo_page
    @user = User.find(params[:id])
    @favorites = current_user.favorite_blogs.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :email,
                                 :password,
                                 :password_confirmation,
                                 :profile,
                                 :user_image, :user_image_cache)
  end


end
