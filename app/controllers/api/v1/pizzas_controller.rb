class Api::V1::PizzasController < ApplicationController

    def index 
        pizzas = Pizza.all 
        render json: pizzas
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

    private 

    def pizza_params
        params.require(:pizza).permit(:title, :description)
    end 
end
