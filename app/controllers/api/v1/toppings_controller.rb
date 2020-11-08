class Api::V1::ToppingsController < ApplicationController

    def create
        pizza = Pizza.find(params[:pizza_id])
        topping = Topping.new(topping_params)
    # byebug
        if topping.save
            # render json: topping, status: :accepted
            render json: ToppingSerializer.new(topping)
        else 
            render json: {errors: topping.errors.full_messages}, status: 
            :unprocessible_entity
        end 
    end 

    def destroy
        topping = Topping.find(params[:id])
        topping.destroy

        render json: ToppingSerializer.new(topping)
        # render json: {toppingId: topping.id}
    end 

    private 

    def topping_params
        params.require(:topping).permit(:ingredient_name, :pizza_id)
    end 
end 