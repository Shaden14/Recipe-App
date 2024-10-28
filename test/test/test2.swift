////
////  test2.swift
////  test
////
////  Created by Shaden Alhumood on 24/04/1446 AH.
////
//
//import SwiftUI
//
//struct PopupView: View {
//    @Binding var tasks: [String]       // Binding to the main view's tasks array
//    @State private var newTask: String = "" // Local state for the new task input
//    @Environment(\.presentationMode) var presentationMode // For dismissing the popup
//
//    var body: some View {
//        VStack(spacing: 20) {
//            Text("Add a New Task")
//                .font(.title2)
//            
//            // TextField for entering a new task
//            TextField("Task name", text: $newTask)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .padding()
//            
//            // Button to add the task and close the popup
//            Button("Add Task") {
//                if !newTask.isEmpty {
//                    tasks.append(newTask) // Add the task to the list
//                    newTask = ""          // Clear the input field
//                    presentationMode.wrappedValue.dismiss() // Dismiss the popup
//                }
//            }
//            .padding()
//            .background(Color.green)
//            .foregroundColor(.white)
//            .cornerRadius(8)
//        }
//        .padding()
//    }
//}
//
//
//#Preview {
//    PopupView()
//}
