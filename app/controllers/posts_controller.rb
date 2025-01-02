class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @posts = Post.order(created_at: :desc).paginate(page: params[:page], per_page: 3)
  end

  def show
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: "Post created successfully"
    else
      render :new
    end
  end

  def edit;
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Post updated successfully"
    else
      render :edit

    end
  end

  def destroy
    @post.destroy
    redirect_to post_path, notice: 'Post exclude successfully'
  end
  def set_post
    @post = Post.find(params[:id])
  end
  
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
