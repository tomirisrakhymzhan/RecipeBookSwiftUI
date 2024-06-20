//
//  ContentView.swift
//  RecipesSwiftUI
//
//  Created by Томирис Рахымжан on 17/06/2024.
//

import SwiftUI

enum SegmentTitle: String, CaseIterable {
    case soups = "Soups"
    case salads = "Salads"
    case main = "Main"
    case desserts = "Desserts"
    case drinks = "Drinks"
}

struct ContentView: View {
    @State private var selectedSegment: SegmentTitle = .soups
    
    

    var body: some View {
        
        VStack{
            Picker("Options", selection: $selectedSegment) {
                ForEach(SegmentTitle.allCases, id: \.self) {
                    segment in Text(segment.rawValue)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            switch selectedSegment {
            case .soups:
                RecipeNavigationView(segmentTitle: selectedSegment, recipes: Recipe.soups)
            case .salads:
                RecipeNavigationView(segmentTitle: selectedSegment, recipes: Recipe.salads)
            case .main:
                RecipeNavigationView(segmentTitle: selectedSegment, recipes: Recipe.mainDishes)
            case .desserts:
                RecipeNavigationView(segmentTitle: selectedSegment, recipes: Recipe.desserts)
            case .drinks:
                RecipeNavigationView(segmentTitle: selectedSegment, recipes: Recipe.drinks)
            }
            
            
        }
    }
}

struct RecipeNavigationView: View {
    let segmentTitle: SegmentTitle
    let recipes: [Recipe]
    var body: some View {
        NavigationView {
            
            List(recipes) { recipe in
                NavigationLink(destination: RecipeDetailView(recipe: recipe)){
                    RecipeRowView(recipe: recipe)
                }
            }.navigationTitle(segmentTitle.rawValue)
        }
    }
}

struct RecipeRowView: View {
    let recipe: Recipe
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(recipe.imageName ?? "default").resizable().scaledToFill()
                .frame(width: 100, height: 100).clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 3)
                }
                .shadow(radius: 7)
            
            VStack(alignment: .leading) {
                Text(recipe.name)
                
                switch recipe.difficulty {
                case "Easy":
                    LabelView(text: recipe.difficulty, color: Color(UIColor.green))
                case "Medium":
                    LabelView(text: recipe.difficulty, color: Color(UIColor.yellow))
                case "Hard":
                    LabelView(text: recipe.difficulty, color: Color(UIColor.red))
                default:
                    LabelView(text: recipe.difficulty, color: Color(UIColor.secondarySystemBackground))

                }
                Text(recipe.cookingTime)
                
            }
        }.padding(.vertical, 3)
            
    }
}

struct LabelView: View {
    let text : String
    let color: Color
    var body: some View {
        Text(text)
            .padding(.horizontal)
            .padding(.vertical, 5)
            .background(color)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}


#Preview {
    ContentView()
}
