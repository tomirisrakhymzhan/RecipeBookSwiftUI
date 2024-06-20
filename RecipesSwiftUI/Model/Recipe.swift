//
//  Recipe.swift
//  RecipesSwiftUI
//
//  Created by Томирис Рахымжан on 18/06/2024.
//

import Foundation
struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let cookingTime: String
    let difficulty: String
    let ingredients: [String]
    let description: String
    var imageName: String?
}

// Data source of recipes
extension Recipe {
    static let soups: [Recipe] = [
        Recipe(name: "Tomato Soup",
               cookingTime: "30 minutes",
               difficulty: "Easy",
               ingredients: ["Tomatoes", "Onion", "Garlic", "Vegetable Stock", "Salt", "Pepper", "Basil"],
               description: "A classic tomato soup with basil and garlic, perfect for a cozy evening.",
               imageName: "tomato-soup"),
        Recipe(name: "Chicken Noodle Soup",
               cookingTime: "45 minutes",
               difficulty: "Medium",
               ingredients: ["Chicken Breast", "Carrots", "Celery", "Onion", "Chicken Broth", "Egg Noodles", "Thyme", "Bay Leaf"],
               description: "A hearty chicken noodle soup loaded with vegetables and tender chicken breast.",
               imageName: "chicken-soup"),
        Recipe(name: "Broccoli Cheddar Soup",
               cookingTime: "30 minutes",
               difficulty: "Easy",
               ingredients: ["Broccoli", "Cheddar Cheese", "Carrots", "Onion", "Celery", "Chicken Broth", "Flour", "Butter", "Milk"],
               description: "Creamy broccoli soup with melted cheddar cheese, perfect for a cozy meal.",
               imageName: "broccoli-cheddar-soup"),
        Recipe(name: "Lentil Soup",
               cookingTime: "1 hour",
               difficulty: "Medium",
               ingredients: ["Brown Lentils", "Carrots", "Celery", "Onion", "Garlic", "Tomatoes", "Vegetable Broth", "Bay Leaf", "Cumin", "Coriander"],
               description: "Hearty lentil soup loaded with vegetables and fragrant spices, great for a healthy lunch.",
               imageName: "lentil-soup"
              ),
        Recipe(name: "Tom Kha Gai",
               cookingTime: "30 minutes",
               difficulty: "Hard",
               ingredients: ["Chicken Breast", "Coconut Milk", "Lemongrass", "Galangal", "Kaffir Lime Leaves", "Mushrooms", "Fish Sauce", "Lime Juice"],
               description: "A Thai-inspired coconut soup with chicken, mushrooms, and aromatic herbs, bursting with flavor.",
               imageName: "tom-kha-gai")
    ]
    
    static let salads: [Recipe] = [
        Recipe(name: "Caesar Salad",
               cookingTime: "15 minutes",
               difficulty: "Easy",
               ingredients: ["Romaine Lettuce", "Croutons", "Parmesan Cheese", "Caesar Dressing"],
               description: "Classic Caesar salad with crisp lettuce, crunchy croutons, and tangy dressing.",
               imageName: "caesar-salad"),
        Recipe(name: "Greek Salad",
               cookingTime: "20 minutes",
               difficulty: "Easy",
               ingredients: ["Cucumbers", "Tomatoes", "Red Onion", "Kalamata Olives", "Feta Cheese", "Olive Oil", "Lemon Juice", "Oregano"],
               description: "A refreshing salad with cucumbers, tomatoes, olives, and feta cheese, dressed in olive oil and lemon juice.",
               imageName: "greek-salad"),
        Recipe(name: "Caprese Salad",
              cookingTime: "10 minutes",
              difficulty: "Easy",
              ingredients: ["Tomatoes", "Fresh Mozzarella", "Basil Leaves", "Balsamic Glaze", "Olive Oil", "Salt", "Pepper"],
              description: "A simple Italian salad made with fresh tomatoes, mozzarella cheese, and basil leaves, drizzled with balsamic glaze.",
              imageName: "caprese-salad"),
        Recipe(name: "Quinoa Salad",
               cookingTime: "25 minutes",
               difficulty: "Easy",
               ingredients: ["Quinoa", "Cucumber", "Cherry Tomatoes", "Red Bell Pepper", "Red Onion", "Feta Cheese", "Lemon Juice", "Olive Oil", "Parsley"],
               description: "A nutritious salad with protein-packed quinoa, fresh vegetables, and tangy feta cheese, tossed in a lemony dressing.",
              imageName: "quinoa-salad")
    ]
    
    static let mainDishes: [Recipe] = [
        Recipe(name: "Spaghetti Carbonara",
               cookingTime: "25 minutes",
               difficulty: "Medium",
               ingredients: ["Spaghetti", "Bacon", "Eggs", "Parmesan Cheese", "Garlic", "Black Pepper"],
               description: "A classic Italian pasta dish made with spaghetti, crispy bacon, eggs, and Parmesan cheese.",
               imageName: "spaghetti-carbonara"),
        Recipe(name: "Chicken Parmesan",
               cookingTime: "40 minutes",
               difficulty: "Medium",
               ingredients: ["Chicken Breast", "Breadcrumbs", "Marinara Sauce", "Mozzarella Cheese", "Parmesan Cheese", "Basil", "Olive Oil"],
               description: "Tender breaded chicken breasts topped with marinara sauce and melted mozzarella cheese, served with pasta.",
               imageName: "chicken-parmesan"),
        Recipe(name: "Beef Stir Fry",
             cookingTime: "30 minutes",
             difficulty: "Hard",
             ingredients: ["Beef Sirloin", "Broccoli", "Bell Peppers", "Carrots", "Soy Sauce", "Ginger", "Garlic", "Rice"],
             description: "Tender beef stir-fried with colorful vegetables in a savory sauce, served over steamed rice.",
              imageName: "beef-stir-fry"),
        Recipe(name: "Grilled Salmon",
             cookingTime: "20 minutes",
             difficulty: "Easy",
             ingredients: ["Salmon Fillets", "Lemon", "Olive Oil", "Garlic", "Dill", "Salt", "Pepper"],
             description: "Fresh salmon fillets seasoned with garlic, dill, and lemon, grilled to perfection.",
             imageName: "grilled-salmon"),
        Recipe(name: "Vegetable Lasagna",
             cookingTime: "1 hour",
             difficulty: "Hard",
             ingredients: ["Lasagna Noodles", "Marinara Sauce", "Zucchini", "Yellow Squash", "Spinach", "Ricotta Cheese", "Mozzarella Cheese", "Parmesan Cheese"],
             description: "Layers of lasagna noodles, marinara sauce, and assorted vegetables, topped with creamy ricotta and melted cheese.",
             imageName: "vegetable-lasagna")
   ]
    
    static let desserts: [Recipe] = [
        Recipe(name: "Chocolate Cake",
               cookingTime: "50 minutes",
               difficulty: "Hard",
               ingredients: ["Flour", "Sugar", "Cocoa Powder", "Eggs", "Milk", "Butter", "Vanilla Extract", "Baking Powder", "Salt"],
               description: "Rich and moist chocolate cake that's perfect for any occasion.",
               imageName: "chocolate-cake"),
        Recipe(name: "Apple Pie",
               cookingTime: "1 hour",
               difficulty: "Medium",
               ingredients: ["Apples", "Pie Crust", "Sugar", "Cinnamon", "Butter", "Flour"],
               description: "Classic homemade apple pie with a flaky crust and warm cinnamon-spiced apples.",
               imageName: "apple-pie"),
    ]
    
    static let drinks: [Recipe] = [
        Recipe(name: "Mojito",
               cookingTime: "10 minutes",
               difficulty: "Easy",
               ingredients: ["White Rum", "Fresh Mint Leaves", "Lime Juice", "Simple Syrup", "Club Soda", "Ice"],
               description: "A refreshing Cuban cocktail made with rum, mint, lime juice, and soda water.",
               imageName: "mojito"),
        Recipe(name: "Margarita",
               cookingTime: "10 minutes",
               difficulty: "Easy",
               ingredients: ["Tequila", "Triple Sec", "Lime Juice", "Simple Syrup", "Salt", "Ice"],
               description: "A classic Mexican cocktail made with tequila, lime juice, and orange liqueur, served with a salted rim.",
               imageName: "margarita"),
        Recipe(name: "Strawberry Lemonade",
               cookingTime: "10 minutes",
               difficulty: "Easy",
               ingredients: ["Strawberries", "Lemon Juice", "Sugar", "Water", "Ice"],
               description: "A sweet and tangy lemonade infused with fresh strawberries, perfect for hot summer days.",
               imageName: "strawberry-lemonade"),
        Recipe(name: "Virgin Mojito",
               cookingTime: "5 minutes",
               difficulty: "Easy",
               ingredients: ["Fresh Mint Leaves", "Lime", "Simple Syrup", "Club Soda", "Ice"],
               description: "A refreshing mocktail version of the classic Mojito, made with fresh mint, lime, and soda water, served over ice.",
               imageName: "virgin-mojito"),
    ]
}
