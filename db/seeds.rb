# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#user = User.create(username: "rayvel", password: "test1", email: "rayv156@gmail.com", age: 32)

GroceryList.create(aisle: ["frozen food", "meat", "granola/cereal"], items: ["pizza", "beef", "corn flakes"], user_id: 1)

Recipe.create(ingredients:["these", "are", "ingredients"], instructions: ["these", "are", "some", "instructions"], prep_time: "20 mins", cook_time: "20 mins", summary: "This is a summary", name: "BEST PIZZA EVER", img: "https://spoonacular.com/recipeImages/716429-556x370.jpg", user_id: 1)