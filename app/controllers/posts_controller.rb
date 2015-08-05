class PostsController < ApplicationController
# index
  def index
    @posts = Post.all
  end

# new
  def new
    @post = Post.new
  end

# create
  def create

    @post = current_user.posts.create(post_params)

    redirect_to post_path(@post)
  end

# show
  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.all
  end

# edit
  def edit
    @post = Post.find(params[:id])
  end

# update
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post)
  end

# delete
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :author, :photo_url, :content)
    end
end
