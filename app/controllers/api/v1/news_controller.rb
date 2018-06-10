module Api::V1
  class NewsController < ApplicationController
    def index

      @articles = Article.all
      render json: @articles

    end
  end
end