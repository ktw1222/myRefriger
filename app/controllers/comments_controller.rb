class CommentsController < ApplicationController
  #index
  def index
      @post = Post.find(params[:post_id])
      @comments = @post.comments.all
  end

  #show
  def show
        @post = Post.find(params[:post_id])
        @comment = Comment.find(params[:id])
  end

  #new
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  #create
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create(comment_params.merge(post: @post))

    redirect_to post_path(@post)

  end

  #edit
  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  #update
  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params.merge(post: @post))

    redirect_to post_path(@post, @comment)

  end

  #destroy
  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to post_comments_path

  end

  private
    def comment_params
      params.require(:comment).permit(:name, :text)
    end
end
