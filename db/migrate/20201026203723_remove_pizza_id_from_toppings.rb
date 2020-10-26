class RemovePizzaIdFromToppings < ActiveRecord::Migration[5.2]
  def change
    remove_column :toppings, :pizza_id, :integer
  end
end
