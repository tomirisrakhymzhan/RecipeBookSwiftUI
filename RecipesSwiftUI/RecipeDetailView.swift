//
//  RecipeDetailView.swift
//  RecipesSwiftUI
//
//  Created by Томирис Рахымжан on 18/06/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Image(recipe.imageName ?? "default")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width - 40, height: 270)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .overlay {
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.white, lineWidth: 3)
                    }
                    .shadow(radius: 7)
                    .padding(.horizontal)

                Text(recipe.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal)

                HStack(spacing: 30) {
                    Text("Time: \(recipe.cookingTime)")
                    Text("Difficulty: \(recipe.difficulty)")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding(.horizontal)
                
                Divider()
                    .padding(.horizontal)

                Text(recipe.description)
                    .padding(.horizontal)

                Divider()
                    .padding(.horizontal)

                Text("Ingredients")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.horizontal)

                ForEach(recipe.ingredients, id: \.self) { ingredient in
                    Text(ingredient)
                        .padding(.horizontal)
                        .padding(.vertical, 5)
                        .background(Color(UIColor.secondarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal)
                }
            }
            .padding(.vertical)
        }
        .background(Color(UIColor.systemBackground))
        .navigationTitle(recipe.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    
    RecipeDetailView(recipe: Recipe.soups.first!)
}
