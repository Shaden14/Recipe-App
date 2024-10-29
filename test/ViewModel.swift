//
//  Model.swift
//  test
//
//  Created by Shaden Alhumood on 26/04/1446 AH.
//

import Foundation



struct ViewModel: Identifiable{
    
    // Add ingredient to the list

    func addIngredient(name: String) {
        guard !name.isEmpty else { return }
        let newIngredient = RecipeIngredient(name: name, quantity: quantity, measurement: measurement)
        ingredients.append(newIngredient)
        toggleIngredientPopup() // Close the popup after adding
    }
}
