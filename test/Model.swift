//
//  Model.swift
//  test
//
//  Created by Shaden Alhumood on 26/04/1446 AH.
//

import Foundation

struct Recpie: Identifiable{
    
    
    let id: UUID
    var title: String
    var description: String
    
    // extra
    var ingredients: [RecipeIngredient] = []
    var cookingTime: Int?
    var difficulty: String?
    var serving:Int?
    
}


struct RecipeIngredient: Identifiable{
    
    let id = UUID()
    var name:String
    var quantity: Int
    var measurement: String
    
}
