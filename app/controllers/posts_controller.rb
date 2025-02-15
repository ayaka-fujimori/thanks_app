class PostsController < ApplicationController
  before_action:authenticate_user
  before_action :ensure_correct_user, {only: [:edit, :update, :destroy]}

  def ensure_correct_user
    @post = Post.find_by(id: params[:id])
    if @post.user_id != @current_user.id
      flash[:notice]="権限がありません"
      redirect_to("/posts/index")
    end
  end
  
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: @post.user_id)
    @likes_count = Like.where(post_id: @post.user_id).count

    @select_category_index1 = Post.where(category_id: 1)
    @select_category_index2 = Post.where(category_id: 2)
    @select_category_index3 = Post.where(category_id: 3)
    @select_category_index4 = Post.where(category_id: 4)
  end

  def new
    @post = Post.new
  end

  def create
    @post=Post.new(post_params)
    if @post.save!
      flash[:notice] = "投稿を作成しました"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end  
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/posts/index")
    else
      render("posts/edit")
    end
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/posts/index")
  end

  private

  def post_params
    params.require(:post).permit(
      :content,
      :send_user_id,
      :user_id,
      :category_id
    )
  
  end


end
