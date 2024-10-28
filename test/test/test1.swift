//
//  test1.swift
//  test
//
//  Created by Shaden Alhumood on 24/04/1446 AH.
//

import SwiftUI

struct MainView: View {
    
    @State private var showPopup = false         // Controls the visibility of the popup
    @State private var ingredient: [String] = []         // Stores the list of tasks
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Tasks")
                .font(.title)
                .padding()

            // List to display tasks
            List(ingredient, id: \.self) { task in
                Text(task)
            }
            
            // Button to show the popup
            Button(action: {
                showPopup.toggle()
            }) {
                Image(systemName: "plus")
                    .foregroundColor(.orange)
            }
            .padding()
            .foregroundColor(.white)
        }
        
        .padding()
        .sheet(isPresented: $showPopup) {
            // Pass the tasks array as a binding to PopupView
            PopupView(tasks: $ingredient)
        }
    }
}


struct PopupView: View {
    @Binding var tasks: [String]       // Binding to the main view's tasks array
    @State private var newTask1: String = "" // Local state for the new task input
    @State private var newTask2: String = "" // Local state for the new task input
    @Environment(\.presentationMode) var presentationMode // For dismissing the popup

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Ingrediant Name")
                    .font(.title2)
                
                // TextField for entering a new task
                TextField("Ingrediant Name", text: $newTask1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                // TextField for entering a new task
                TextField("Ingrediant Name", text: $newTask2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                
                // Button to add the task and close the popup
                Button("Add Task") {
                    if !newTask1.isEmpty {
                        tasks.append(newTask1) // Add the task to the list
                        newTask1 = ""          // Clear the input field
                        presentationMode.wrappedValue.dismiss() // Dismiss the popup
                    }
                    if !newTask2.isEmpty {
                        tasks.append(newTask2) // Add the task to the list
                        newTask2 = ""          // Clear the input field
                        presentationMode.wrappedValue.dismiss() // Dismiss the popup
                    }
                    
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
//                .navigationBarTitleDisplayMode(.inline)
            }
            .padding()
        }
    }
}

#Preview {
    MainView()
}
