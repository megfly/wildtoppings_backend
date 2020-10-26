class Api::V1::PizzasController < ApplicationController

    def index 
        #we dont need instance variables- because usually we are rendering data in views
            #get request and returns index of all pizzas in my db in json format
        pizzas = Pizza.all 
        render json: pizzas
    end 
end
