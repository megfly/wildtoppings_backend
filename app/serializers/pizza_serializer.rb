class PizzaSerializer
  include FastJsonapi::ObjectSerializer
  #has_many :toppings
  attributes :title, :description, :toppings #associated relationship
end
