class CreateToppings < ActiveRecord::Migration[5.2]
  def change
    create_table :toppings do |t|
      t.string :ingredient_name
      t.integer :pizza_id

      t.timestamps
    end
  end
end
