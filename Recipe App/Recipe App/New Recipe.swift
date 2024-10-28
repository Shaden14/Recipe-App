//
//  New Recipe.swift
//  Recipe App
//
//  Created by Shaden Alhumood on 19/04/1446 AH.
//

import SwiftUI

struct New_Recipe: View {
    
    
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var showPopup = false
    
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(.greyy)
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance}
    
    
    
    
    var body: some View {
        
         NavigationStack{
            
            
            ZStack{
                VStack{
                    
                }
                
                .navigationTitle("New Recipe")
                .toolbar
                {
                    
                    ToolbarItem(placement:
                            .navigationBarTrailing ) {
                                Button(action: {
                                    //                                Text("Save")
                                    //                                    .foregroundColor(.orangee)
                                })
                                {
                                    Text("Save")
                                        .foregroundColor(.orangee)
                                    
                                }
                            }
                }
                
                
                
                VStack{
                    
                    ZStack{
                        
                        Rectangle()
                            .fill(Color.greyy)
                            .strokeBorder(style: StrokeStyle(lineWidth: 2, dash:[5]))
                            .foregroundColor(.orangee)
                            .frame(width: 413, height: 200)
                        
                        
                        VStack{
                            Image(systemName:"photo.badge.plus")
                                .resizable()
                                .frame(width: 95, height: 70)
                                .foregroundColor(.orangee)
                                .fontWeight(.bold)
                            
                            
                            Text("Upload Photo")
                                .fontWeight(.bold)
                                .font(.system(size: 22))
                            
                        }.padding()
                        
                    }.padding()
                    
                    
                    VStack(alignment: .leading){
                        Text("Title")
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                            .foregroundColor(Color.white)
                            .padding(3.0)
                        
                        
                        TextField("Title", text: $title)
                            .fontWeight(.regular)
                            .font(.system(size: 24))
                            .frame(width: 390, height: 47)
                            .background(Color(.greyy))
                            .cornerRadius(8)
                        
                        
                    }
                    
                    
                    
                    VStack(alignment: .leading){
                        
                        Text("Description")
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                            .foregroundColor(Color.white)
                            .padding(3.0)
                        
                        
                        TextField("Description", text: $description, axis:.vertical)
                            .padding([.bottom, .trailing], 3.0)
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
                            showPopup.toggle()
                        }) {
                            Image(systemName: "plus")
                                .foregroundColor(.orangee)
                        }
                        Spacer()
                    }.padding()
                   
                }
                
                
                if showPopup {
                    Color.black.opacity(0.4)
                        .ignoresSafeArea()
                        .onTapGesture {
                            showPopup = false
                        }
                    CustomPopupView()
                        .transition(.scale)
                }
                
            }.animation(.easeInOut, value: showPopup)
            
            
        }
        
    }
        
        
        
         
        
    }


#Preview {
    New_Recipe()
}
