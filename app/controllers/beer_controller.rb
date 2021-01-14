class BeerController < ApplicationController
  before_action :set_beer, only: [:show, :edit, :update, :destroy]

    def index
        @beers = Beer.all
      end
    
      def new
        @beer = Beer.new
      end
    
      def create
        @beer = Beer.new(beer_params)
        @beer.save
        redirect_to beer_path(@beer)
      end
    
      def show
      end
    
      def edit
      end
    
      def update
        @beer.update(beer_params)
        redirect_to beer_path(@beer)
      end
    
      def destroy
        @beer.destroy
        redirect_to beers_path
      end

      private
    
      def set_beer
        @beer = Beer.find(params[:id])
      end

      def restaurant_params
        params.require(:restaurant).permit(:name, :rating, :producer, :price, :type)
      end
end
