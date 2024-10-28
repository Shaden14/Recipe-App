//
//  Recipe Information Page.swift
//  Recipe App
//
//  Created by Shaden Alhumood on 25/04/1446 AH.
//

import SwiftUI

struct Recipe_Information_Page: View {
    
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(.greyy)
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance}
    
    
    var body: some View {
       
        NavigationStack{
           
            VStack(spacing: 10){
                    
                    ZStack(alignment: .top) {
                        
                        
                            Image("halomi")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 181)
                                .clipped()
                            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.8), Color.clear]), startPoint: .bottom, endPoint: .top)
                            
                    } .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 181)
                        .shadow(radius: 10)
                
                
                    
                Text("semi-hard cheese typically made from the milk of goats, sheep, or cows. It's known for its tangy taste and firm, chewy texture..")
                    .font(Font.custom("SF Pro Display", size: 12))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                    Text("Ingrediant")
                        .fontWeight(.bold)
                        .font(.system(size: 24))
                        .foregroundColor(Color.white)
                        .padding(.leading, -190)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 380, height: 52)
                            .foregroundColor(.greyy)
                            .cornerRadius(8)
                        
                        HStack{
                            
                            Spacer()
                            
                            Text("1")
                                .font(Font.custom("Helvetica", size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.orangee)
                                .padding(0.5)
                            Text("Plasamic ")
                                .font(Font.custom("Helvetica", size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.orangee)
                            
                            Spacer(minLength: 120)
                            
                            ZStack{
                                Rectangle()
                                    .frame(width: 90, height: 29)
                                    .foregroundColor(.orangee)
                                    .border(.orange)
                                    .opacity(0.5)
                                    .cornerRadius(8)
                                
                                Text("🥄 Spoon")
                                    .font(Font.custom("Helvetica", size: 14))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                      }
                            
                            
                            Spacer()

                        }

                       
                    }
                Spacer()
            }
            

            .navigationTitle("Halomi Salad")
            .toolbar
            {
                
                ToolbarItem(placement:
                        .navigationBarTrailing ) {
                            Button(action: {
                                print(" Add Recipe tapped")
                                
                            }) {
                                NavigationLink(destination: EditPage()) {
                                    Text("Edit")
                                        .foregroundColor(.orangee)
                                }
                            }
                            
                            
                        }

            }
            

            
        }
    
    }
}


#Preview {
    Recipe_Information_Page()
}
