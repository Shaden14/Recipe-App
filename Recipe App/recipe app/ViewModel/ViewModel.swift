//
//  ViewModle.swift
//  Recipe App
//
//  Created by Shaden Alhumood on 26/04/1446 AH.
//

import Foundation

final class PopupViewModel: ObservableObject{
    // CustomPopupView page
    @Published  var ingrediantText: String = ""
    @Published  var selectedButton: SelectedButton?
    @Published  var digitData = 1
    
   
    
    enum SelectedButton {
       case spoonButton, cupButton
    }
    
    
    // New Recipe page + EditPage 
    @Published  var ingrediantTitle: String = ""         // Stores the Title TextField
    @Published  var ingrediantDescription: String = ""       // Stores the Description TextField
    @Published  var ingrediantPopup = false
    @Published var ingredients: [RecipeIngredient] = []
    
    
    
    func toggleIngredientPopup() {
            ingrediantPopup.toggle()
        }

    
    // yara code
    @Published var title: String = ""
    @Published var description: String = ""
    @Published var showIngredientPopup: Bool = false
    @Published var quantity: Int = 1
    @Published var measurement: String = "spoon"
//    @Published var ingredientName: String = "" // Name for the new ingredient
    @Published var ingredientName: String = "" // State variable for new item input
    
   
    
   
    
    func setMeasurement(to newMeasurement: String){
        measurement = newMeasurement
        quantity = 1
        
    }
    
    // Add ingredient to the list

    func addIngredient(name: String) {
        guard !name.isEmpty else { return }
        let newIngredient = RecipeIngredient(name: name, quantity: quantity, measurement: measurement)
        ingredients.append(newIngredient)
        toggleIngredientPopup() // Close the popup after adding
    }
    
    
    
    
    
    
}
