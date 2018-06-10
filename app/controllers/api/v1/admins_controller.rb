module Api::V1
  class AdminsController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def new
    @admin = Admin.new 
    end

    def index
      @admins = Admin.all
      render json: @admins
    end

    def create
      @admin = Admin.new(admin_params)
      if @admin.save
        render json: @admin

      else
        render json: @admin.errors, status: :unprocessable_entity
      end
    end

  def create
    @admin = Admin.new(params[:username, :email, :password])
    @admin.save
  end


    # def update
    #   if @admin.update(admin_params)
    #     render json: @admin
    #   else
    #     render json: @admin.errors, status: :unprocessable_entity
    #   end
    # end

    def destroy
      @admin.destroy
    end
    #
    private
    def admin_params
      params.require(:admin).permit(:id, :username, :email, :password)
    end

    def set_admin
      @admin = Admin.find(params[:id])
    end
  end
end
  


