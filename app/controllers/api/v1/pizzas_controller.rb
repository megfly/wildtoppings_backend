class Api::V1::PizzasController < ApplicationController

    def index 
        @pizzas = Pizza.all 
        render json: @pizzas
    end 
end
