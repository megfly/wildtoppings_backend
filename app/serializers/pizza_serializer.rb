class PizzaSerializer < ActiveModel::Serializer
  has_many :toppings

  attributes :title, :description
end
