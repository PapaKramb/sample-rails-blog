class CommentsController < ApplicationController

  before_action :authenticate_user!, :only => [:create]

  def create
    @articles = Article.find(params[:article_id])
    @articles.comments.create(comment_params)

    redirect_to article_path(@articles)
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
