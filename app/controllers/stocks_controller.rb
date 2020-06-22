class StocksController < ApplicationController

    def index
        stocks = Stock.all
        render json: stocks
    end

    def create
        stock = Stock.create(
            name: params[:name], 
            user_id: params[:user_id],
            purchase_amount: params[:purchase_amount],
            purchase_price: params[:purchase_price]
        )
        render json: stock
    end

    def update
        stock = Stock.find_by_id(params[:id])
        stock.update(stock_params)
        render json: stock
    end

    def destroy
        stock = Stock.find_by_id(params[:id])
        Stock.destroy(params[:id])
    end
    
    
private

    def stock_params
        params.permit(:name, :user_id, :purchase_amount, :purchase_price)
    end

end
