# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create edit update destroy]
  before_action :set_post, only: %i[show edit update destroy]
  before_action :authorize_user!, only: %i[edit update destroy]

  def index
    @posts = Post.order(created_at: :desc).paginate(page: params[:page], per_page: 3)
  end

  def show
    @comments = @post.comments
    @comment = Comment.new
  end

  def new
    @post = current_user.posts.build
  end

  def edit; end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to @post, notice: I18n.t("posts.success")
    else
      flash.now[:alert] = "Erro ao criar o post: #{@post.errors.full_messages.join(', ')}"
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: I18n.t("posts.update_success")
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: I18n.t("posts.destroy")
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def authorize_user!
    return if @post.user == current_user

    redirect_to posts_path, alert: I18n.t("posts.authorize")
  end

  def post_params
    params.require(:post).permit(:title, :body, :description, :author)
  end
end
