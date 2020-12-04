class CatsController < ApplicationController
    def index 
        @cats = Cat.all 

        render :index
    end

    def show
        @cats = Cat.find_by(id: params[:id])

        if @cats
            render 'show'
        else
            redirect_to cats_url
        end
    end

    def new
        render :new
    end

    def create

    end

    def edit
        @cats = Cat.find_by(id: params[:id])

        if @cats
            render :edit
        else
            redirect_to cat_url
        end
    end

end