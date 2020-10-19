class PostsController < ApplicationController
  
  def index
    @posts = Post.all.order(id:"DESC")
  end

  # def new
  # end

  def create
    #発展カリキュラム
    post = Post.create(content: params[:content], checked: false ) #未読という情報を加えている
    render jason:{ post: post } #レスポンスをJSONへ変更

    #応用カリキュラム
    # Post.create(content: params[:content])
    # redirect_to action: :index
  end

def checked
    post = Post.find(params[:id])
    if post.checked
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end

end
