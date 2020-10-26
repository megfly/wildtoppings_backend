class ToppingSerializer < ActiveModel::Serializer
  belongs_to :pizza

  attributes :ingredient_name, :pizza_id
end
