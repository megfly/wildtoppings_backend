# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pickle = Pizza.create(title: "Pickle Pizza", description: "Pickles on pizza!")
reuben = Pizza.create(title: "Reuben Pizza", description: "Reuben-style pastrami pizza!")

Topping.create(ingredient_name: "Ranch Dressing", pizza_id: pickle.id)
Topping.create(ingredient_name: "Garlic", pizza_id: pickle.id)
Topping.create(ingredient_name: "Dill Pickles", pizza_id: pickle.id)
Topping.create(ingredient_name: "Mozzarella", pizza_id: pickle.id)

Topping.create(ingredient_name: "Pastrami", pizza_id: reuben.id)
Topping.create(ingredient_name: "Sauerkraut", pizza_id: reuben.id)
Topping.create(ingredient_name: "Thousand Island", pizza_id: reuben.id)
Topping.create(ingredient_name: "Swiss Cheese", pizza_id: reuben.id)



