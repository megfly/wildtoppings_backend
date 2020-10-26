class CreateToppings < ActiveRecord::Migration[5.2]
  def change
    create_table :toppings do |t|
      t.string :ingredient_name
      t.belongs_to :pizza

      t.timestamps
    end
  end
end
