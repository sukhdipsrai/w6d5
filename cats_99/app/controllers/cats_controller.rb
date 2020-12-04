class CatsController < ApplicationController
    def index 
        @cats = Cat.all 

        render :index
    end

    def show
        @cats = Cat.find_by(id: params[:id])

        render 'show'
    end

end