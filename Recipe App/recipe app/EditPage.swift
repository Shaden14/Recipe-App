//
//  EditPage.swift
//  Recipe App
//
//  Created by Shaden Alhumood on 25/04/1446 AH.
//

import SwiftUI

struct EditPage: View {
    
    
    @State private var ingrediantTitle: String = ""         // Stores the Title TextField
    @State private var ingrediantDescription: String = ""       // Stores the Description TextField
    @State private var ingrediantPopup = false
    @State private var ingredient: [String] = []         // Stores the list of tasks
    
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(.greyy)
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance}
    
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                VStack  {
                    
                
                    
                    ZStack{
                        
                        Rectangle()
                            .strokeBorder(style: StrokeStyle(lineWidth: 2, dash:[5]))
                            .foregroundColor(.orangee)
                            .frame(width: 413, height: 200)
                        
                        
                        
                        Image("halomi")
                            .frame(width: 400, height: 195)
                            .clipped()
                        
                        
                    }
                    
                    
                    VStack(alignment: .leading){
                        Text("Title")
                            .padding(.horizontal)
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                            .foregroundColor(Color.white)
                        
                        
                        TextField("Title", text: $ingrediantTitle)
                            .padding(.horizontal)
                            .fontWeight(.regular)
                            .font(.system(size: 24))
                            .frame(width: 390, height: 47)
                            .background(Color(.greyy))
                            .cornerRadius(8)
                        
                        
                    }
                    
                    
                    
                    VStack(alignment: .leading){
                        
                        Text("Description")
                            .padding(.horizontal)
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                            .foregroundColor(Color.white)
                            .padding(3.0)
                        
                        
                        TextField("Description", text: $ingrediantDescription, axis:.vertical)
                            .padding(.horizontal)
                            .frame(width: 390 )
                            .font(.system(size: 24))
                            .background(Color.greyy)
                            .cornerRadius(8)
                            .multilineTextAlignment(.leading)
                            .lineLimit(4...10)
                        
                        
                        
                    }.padding()
                    
                    
                    
                    HStack{
                        Spacer()
                        Text("Add Ingredient")
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                            .foregroundColor(Color.white)
                        
                        
                        Spacer(minLength: 180)
                        
                        
                        
                        Button(action: {
                            ingrediantPopup.toggle()
                        }) {
                            Image(systemName: "plus")
                                .foregroundColor(.orangee)
                        }
                        Spacer()
                    }
                    
                }
                
                if ingrediantPopup {
                    Color.black.opacity(0.4)
                        .ignoresSafeArea()
                        .onTapGesture {
                            ingrediantPopup = false
                        }
                    CustomPopupView()
                        .transition(.scale)
                }
                
            }.animation(.easeInOut, value: ingrediantPopup)
            
            
                .navigationTitle("Halomi Salad")
                .toolbar
            {
                
                ToolbarItem(placement:
                        .navigationBarTrailing ) {
                            NavigationLink(destination: Food_Recipes__()) {
                                Text("Save")
                                    .foregroundColor(.orangee)
                                
                            }
                        }
                
            }
            
        

        }
    }
}

#Preview {
    EditPage()
}