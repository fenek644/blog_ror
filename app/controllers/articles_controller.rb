class ArticlesController < ApplicationController

  def index
    @articles = Article.order 'created_at desc'
  end

  def show
    post_id = params[:id]

    @row = Article.find(post_id)
  end

  def edit
    post_id = params[:id]

    @row = Article.find(post_id)

  end

  def update
     post_id = articles_id["id"]
    @item = Article.find(post_id)
    @item.update(articles_params)
  end


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

  def articles_id
    params.require(:article).permit(:id)
  end


end
