//
//  ContentView.swift
//  Recipe App
//
//  Created by Shaden Alhumood on 18/04/1446 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
   
        NavigationView {
            
            NavigationLink(destination: New_Recipe()) {
                Text("See All")
                    .font(Font.custom("SF Pro Display", size: 12))
                    .fontWeight(.medium)
                    .foregroundColor(.orangee)
                    .frame(width: 100)
                    .underline()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
