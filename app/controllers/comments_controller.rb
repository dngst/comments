# Comments controller
class CommentsController < ApplicationController
  def index
    @pagy, @comments = pagy(Comment.all.reverse_order)
  end

  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to root_path }
      else
        format.html { redirect_to root_path, notice: @comment.errors.full_messages }
      end
    end
  end

  private

  def comment_params
    params.permit(:body)
  end
end
