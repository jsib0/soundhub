class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    if @post.save
      @post = Post.find_by_id(@post.id)
      redirect_to "/users/#{session[:user_id]}"
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to :back
    end
  end

  def show
  end
  private
  def post_params
    params.require(:post).permit(:image, :user_id)
  end
end
