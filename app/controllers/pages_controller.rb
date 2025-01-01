class PagesController < ApplicationController
  def home
  end
  def index
    @posts = Post.paginate(page: params[:page], per_page:3)
  end
end
