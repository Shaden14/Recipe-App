//
//  Test.swift
//  Recipe App
//
//  Created by Shaden Alhumood on 23/04/1446 AH.
//

import SwiftUI

struct Test: View {
    
    enum SelectedButton {
           case first, second
       }
    
    @State private var selectedButton: SelectedButton?

    var body: some View {
       
       
        VStack(spacing: 20) {
            // Button 1
            Button("🥄 Spoon") {
                selectedButton = selectedButton == .first ? nil : .first  // Toggle selection
            }
            .padding()
            .background(selectedButton == .first ? Color.blue : Color.gray.opacity(0.3))
            .foregroundColor(.white)
            .cornerRadius(8)

            // Button 2
            Button("🥛 Cup") {
                selectedButton = selectedButton == .second ? nil : .second  // Toggle selection
            }
            .padding()
            .background(selectedButton == .second ? Color.green : Color.gray.opacity(0.3))
            .foregroundColor(.white)
            .cornerRadius(8)



            Rectangle()
                         .fill(Color.orange)
                         .frame(width: 145, height: 36)
                         .overlay(
                             Group {
                                 if let selected = selectedButton {
                                     switch selected {
                                     case .first:
                                         Text("🥄 Spoon")
                                             .foregroundColor(.white)
                                     case .second:
                                         Text("🥛 Cup")
                                             .foregroundColor(.white)
                           
                                     }
                                 } else {
                                     Text("")
                                         .foregroundColor(.gray)
                                 }
                             }
                         )
                         .cornerRadius(10)
                         .padding(.top, 20)
                         .animation(.easeInOut, value: selectedButton)  // Add smooth transition
                 }
                 .padding()
             }
         }

#Preview {
    Test()
}
