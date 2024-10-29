//
//  Model.swift
//  test
//
//  Created by Shaden Alhumood on 26/04/1446 AH.
//

import Foundation



struct ViewModel: Identifiable{
    
    @Published var title: String = ""
    @Published var description: String = ""
    @Published var showIngredientPopup: Bool = false
    @Published var quantity: Int = 1
    @Published var measurement: String = "spoon"
    
    
    
    @Published var ingrediednts: [RecipeIngredient] = []
    
    func toggleIngredientPopup(){
        .withAnimation {
            toggleIngredientPopup.toggle()
        }
    }
    
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
