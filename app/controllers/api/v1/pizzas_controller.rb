class Api::V1::PizzasController < ApplicationController

    def index 
        pizzas = Pizza.all 
        render json: PizzaSerializer.new(pizzas)
    end 

    def show 
        pizza = Pizza.find(params[:id])
        # render json: pizza, status: 200
        render json: PizzaSerializer.new(pizza)
    end 

    def create
        pizza = Pizza.new(pizza_params)
        # byebug
        if pizza.save
            # render json: pizza, status: :accepted
            render json: PizzaSerializer.new(pizza)
        else 
            render json: {errors: pizza.errors.full_messages}, status: 
            :unprocessible_entity
        end 
    end 

    def update 
        pizza = Pizza.find(params[:id])
        if pizza.update(pizza_params)
            # render json: pizza, status: :accepted
            render json: PizzaSerializer.new(pizza)
        else 
            render json: {errors: pizza.errors.full_messages}, status: 
            :unprocessible_entity
        end 
    end 

    private 

    def pizza_params
        params.require(:pizza).permit(:title, :description, :toppings)
    end 
end
