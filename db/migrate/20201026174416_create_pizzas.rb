class CreatePizzas < ActiveRecord::Migration[5.2]
  def change
    create_table :pizzas do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
