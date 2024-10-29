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
  //  @Published  var ingredient: [String] = []         // Stores the list of tasks
    
    
    
    
    
    
    
    
    
}
