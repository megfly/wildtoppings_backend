class Api::V1::ToppingsController < ApplicationController
    def index 
        toppings = Topping.all 
        render json: ToppingSerializer.new(toppings)
        # render json: toppings, status: 200
    end 

    def show 
        topping = Topping.find(params[:id])
        render json: topping, status: 200
    end 

    def create
        # 
        pizza = Pizza.find(params[:pizza_id])
# byebug
        topping = Topping.new
        # byebug
        if topping.save
            # render json: topping, status: :accepted
            render json: ToppingSerializer.new(topping)
        else 
            render json: {errors: topping.errors.full_messages}, status: 
            :unprocessible_entity
        end 
    end 

    # def update 
    #     topping = Topping.find(params[:id])
    #     if topping.update(topping_params)
    #         render json: topping, status: :accepted
    #     else 
    #         render json: {errors: topping.errors.full_messages}, status: 
    #         :unprocessible_entity
    #     end 
    # end 

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