class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @article.comments.create(comment_params)
    redirect_to article_path(@article)

  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end

end

# article_comments POST   /articles/:article_id/comments(.:format)    comments#create

