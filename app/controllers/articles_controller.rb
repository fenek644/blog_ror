class ArticlesController < ApplicationController
  
  def new

  end

  def create
    @article = Article.new(articles_params)
    if @article.valid?
      @article.save
    else
      render action: 'new'
    end
  end

  private

  def articles_params
    params.require(:article).permit(:title, :text)
  end

end
