class ToppingSerializer 
  include FastJsonapi::ObjectSerializer
  #belongs_to :pizza
  attributes :ingredient_name, :pizza_id, :pizza #associated relationship
end
