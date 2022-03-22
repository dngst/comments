# Comments controller
class CommentsController < ApplicationController
  def index
    @comments = Comment.all.reverse_order
  end

  def create
    @comment = Comment.create!(comment_params)
  end

  private

  def comment_params
    params.permit(:body)
  end
end
