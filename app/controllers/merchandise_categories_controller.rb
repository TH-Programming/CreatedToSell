class MerchandiseCategoriesController < ApplicationController


    def index
        @categories = Category.all
    end
    def show
      
    end
    def new
        @merchandise = Merchandise.new
    end
    def create
        merchandise = Merchandise.new(merch_params)
        if merchandise.save
            redirect_to 
        end
    end
    def edit

    end
    def update
        @merchandise.update(merch_params)
    end
    def delete
        @merchandise.delete
    end
end
