module Api::V1
  class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    # before_action :authenticate_request, only: [:create, :destroy]
    # attr_reader :current_user

    def index
      @articles = Article.all
      render json: @articles
    end

    def create
      @article = Article.new(article_params)
      if @article.save
        render json: @article

      else
        render json: @article.errors, status: :unprocessable_entity
      end
    end


    # def update
    #   if @article.update(article_params)
    #     render json: @article
    #   else
    #     render json: @article.errors, status: :unprocessable_entity
    #   end
    # end

    def destroy
      @article.destroy
    end
    #
    private

    # def authenticate_request
    #   @current_user = AuthorizeApiRequest.call(request.headers).result
    #   render json: { error: 'Not Authorized' }, status: 401 unless @current_user
    # end

    def article_params
      params.require(:article).permit(:id, :title, :description, :imageUrl, :url, :genre)
    end

    def set_article
      @article = Article.find(params[:id])
    end
  end
end
  


