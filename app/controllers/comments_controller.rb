class CommentsController < ApplicationController
  before_action :find_post
  #index
  def index
      
      @comments = @post.comments.all
  end

  #show
  def show

        @comment = Comment.find(params[:id])
  end

  #new
  def new

    @comment = Comment.new
  end

  #create
  def create

    @comment = Comment.create(comment_params.merge(post: @post))

    redirect_to post_path(@post)

  end

  #edit
  def edit

    @comment = Comment.find(params[:id])
  end

  #update
  def update

    @comment = Comment.find(params[:id])
    @comment.update(comment_params.merge(post: @post))

    redirect_to post_path(@post, @comment)

  end

  #destroy
  def destroy

    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to post_path(@post)

  end

  private
    def find_post
      @post = Post.find(params[:post_id])
    end

    def comment_params
      params.require(:comment).permit(:name, :text)
    end
end
