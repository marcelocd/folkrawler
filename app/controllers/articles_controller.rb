class ArticlesController < ApplicationController
  before_action :find_article, only: %i[show destroy]

  def index
    @articles = Article.order(collected_at: :desc)
                       .page(params[:page])
											 .per_page(15)
  end

  def show
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def find_article
    @article = Article.find_by(id: params[:id])
  end
end