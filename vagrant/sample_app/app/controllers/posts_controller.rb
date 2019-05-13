class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def create #privateの下に書かない

  	#ストロングバラメーターを使用
  	post = Post.new(post_params)

    #データベースへ保存する
  	post.save

    #トップ画面へリダイレクト
  	redirect_to '/top'
  end

  private

  def post_params
  	params.require(:post).permit(:title, :body)
  end
end
