//
//  ingrediants.swift
//  test
//
//  Created by Shaden Alhumood on 26/04/1446 AH.
//

import SwiftUI

struct ingrediants: View {
    
    @StateObject private var viewModel = ViewModel()

    
    var body: some View {
       
        // Popup overlay
                        if viewModel.showIngredientPopup {
                            Color.black.opacity(0.4)
                                .ignoresSafeArea()
                                .onTapGesture {
                                    viewModel.toggleIngredientPopup()
                                }

                            VStack(spacing: 20) {
                                Text("Ingredient Name")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                
                                TextField("Ingredient Name", text: $viewModel.ingredientName)
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(8)
                                    .foregroundColor(.white)
                                
                                Text("Measurement")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                
                                HStack {
                                    Button(action: {
                                        viewModel.setMeasurement(to: "Spoon")
                                    }) {
                                        Text("Spoon")
                                            .padding()
                                            .frame(width: 100, height: 40)
                                            .background(viewModel.measurement == "Spoon" ? Color.orange : Color.gray.opacity(0.2))
                                            .cornerRadius(8)
                                            .foregroundColor(.white)
                                    }
                                    
                                    Button(action: {
                                        viewModel.setMeasurement(to: "Cup")
                                    }) {
                                        Text("Cup")
                                            .padding()
                                            .frame(width: 100, height: 40)
                                            .background(viewModel.measurement == "Cup" ? Color.orange : Color.gray.opacity(0.2))
                                            .cornerRadius(8)
                                            .foregroundColor(.white)
                                    }
                                }
                                
                                Text("Serving")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                
                                HStack(spacing: 0) {
                                    Button(action: {
                                        if viewModel.quantity > 1 { viewModel.quantity -= 1 }
                                    }) {
                                        Image(systemName: "minus")
                                            .font(.title2)
                                            .padding()
                                            .background(Color.black.opacity(0.6))
                                            .foregroundColor(.orange)
                                            .cornerRadius(8)
                                    }

                                    Text("\(viewModel.quantity)")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .frame(minWidth: 40)
                                    
                                    Button(action: {
                                        viewModel.quantity += 1
                                    }) {
                                        Image(systemName: "plus")
                                            .font(.title2)
                                            .padding()
                                            .background(Color.black.opacity(0.6))
                                            .foregroundColor(.orange)
                                            .cornerRadius(8)
                                    }
                                    
                                    // Fixed-size label for measurement type next to the stepper
                                    Text(viewModel.measurement)
                                        .frame(width: 100, height: 40) // Set fixed size for consistency
                                        .background(Color.orange)
                                        .cornerRadius(8)
                                        .foregroundColor(.white)
                                        .padding(.leading, 10)
                                }
                                
                                HStack {
                                    Button("Cancel") {
                                        viewModel.toggleIngredientPopup()
                                    }
                                    .padding()
                                    .background(Color.red)
                                    .cornerRadius(8)
                                    .foregroundColor(.white)
                                    
                                    Button("Add") {
                                        viewModel.addIngredient(name: ingredientName)
                                        viewModel.ingredientName = "" // Reset ingredient name input
                                    }
                                    .padding()
                                    .background(Color.orange)
                                    .cornerRadius(8)
                                    .foregroundColor(.white)
                                }
                            }
                            .padding()
                            .background(Color.black)
                            .cornerRadius(15)
                            .shadow(radius: 10)
                            .frame(width: 300, height: 400)
                            .transition(.scale)
                        }
    }
}

#Preview {
    ingrediants()
}
