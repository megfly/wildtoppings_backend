class Api::V1::PizzasController < ApplicationController

    def index 
        pizzas = Pizza.all 
        render json: PizzaSerializer.new(pizzas)
    end 

    def show 
        pizza = Pizza.find(params[:id])
        render json: pizza, status: 200
    end 

    def create
        pizza = Pizza.new(pizza_params)
        if pizza.save
            render json: pizza, status: :accepted
        else 
            render json: {errors: pizza.errors.full_messages}, status: 
            :unprocessible_entity
        end 
    end 

    def update 
        pizza = Pizza.find(params[:id])
        if pizza.update(pizza_params)
            render json: pizza, status: :accepted
        else 
            render json: {errors: pizza.errors.full_messages}, status: 
            :unprocessible_entity
        end 
    end 

    def destroy
        pizza = Pizza.find(params[:id])
        pizza.destroy

        render json: {toppingId: topping.id}
    end 

    private 

    def pizza_params
        params.require(:pizza).permit(:title, :description)
    end 
end
