class AddPizzaIdToToppings < ActiveRecord::Migration[5.2]
  def change
    add_reference :toppings, :pizza, foreign_key: true
  end
end
