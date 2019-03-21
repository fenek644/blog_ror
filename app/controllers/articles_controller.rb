class ArticlesController < ApplicationController

  before_action :authenticate_user!, :only => [:new, :create]

  def index
    @articles = Article.order 'created_at desc'
  end

  def show
    post_id = params[:id]

    @row = Article.find(post_id)
    @comment = @row.comments.new
    @comments = @row.comments.order 'created_at desc'
  end

  def edit

    post_id = params[:id]
    @row = Article.find(post_id)

  end

  def update
     post_id = articles_id["id"]
    @row = Article.find(post_id)
    if @row.update(articles_params)
      redirect_to @row
    else
      render action: 'edit'
    end
  end


  def new

  end

  def create
    @article = Article.new(articles_params)
    if @article.save
      redirect_to @article
    else
      render action: 'new'
    end
  end

  def destroy
    post_id = params[:id]
    @row = Article.find(post_id)
    @row.destroy
    redirect_to articles_path
  end

  private

  def articles_params
    params.require(:article).permit(:title, :text, :username)
  end

  def articles_id
    params.require(:article).permit(:id)
  end


end
