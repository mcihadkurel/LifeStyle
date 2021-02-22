class ArticlesController < ApplicationController
  

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST /articles
  # POST /articles.json
  def create
    article_params =
    params.require(:article).
    permit(:title, :text)
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    @article = Article.find(params[:id])
    article_params =
    params.require(:article).
    permit(:title, :text)
    @article.update(article_params)
    redirect_to articles_path(@articles)
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article = Article.find(params[:id])
    article_params =
    params.require(:article).
    permit(:title, :text, :image_file)
    @event.destroy
    redirect_to articles_path
  end

end
