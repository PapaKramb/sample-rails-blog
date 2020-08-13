class ArticlesController < ApplicationController

  before_action :authenticate_user!, :only => [:new, :create]

  def index
      # @articles = Article.all
       @articles = Article.order('created_at DESC')
       render action: 'index'
  end

  def show
    @articles = Article.find(params[:id])
  end

  def new
  end

  def create
    #render plain: params[:article].inspect
    #@articles = Article.new(articles_params)
    @articles = current_user.articles.new(articles_params)
    if @articles.save
      redirect_to @articles
    else
      render action: 'new'
    end
  end

  def edit
    @articles = Article.find(params[:id])
  end

  def update
    @articles = Article.find(params[:id])
    
    if @articles.update(articles_params)
      redirect_to @articles
    else
      render action: 'edit'
    end
  end

  def destroy
    @articles = Article.find(params[:id])
    @articles.destroy
    redirect_to articles_path
  end

  # def show
  #   @articles = Article.order('created_at DESC')
  #   render action: 'index'
  # end

  private

  def articles_params
    params.require(:article).permit(:title, :text)
  end

end
