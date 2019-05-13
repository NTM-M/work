class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def create
  	post = Post.new(post_params)

  	#データーベースへ保存
  	post.save

  	#詳細画面へリダイレクト
  	redirect_to post_path(post.id)
  end

  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  end

  def edit
  	@post = Post.find(params[:id])
  end

  private
  def post_params
  	params.require(:post).permit(:title, :body)
  end
end
