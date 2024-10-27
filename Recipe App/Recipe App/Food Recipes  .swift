//
//  Food Recipes  .swift
//  Recipe App
//
//  Created by Shaden Alhumood on 19/04/1446 AH.
//

import SwiftUI

struct CardView: View {
    
    var body: some View {
        
        
        NavigationView{
            
            ZStack(alignment: .bottomLeading) {
                
                Image("halomi")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 414, height: 272)
                    .clipped() // Ensures the image fits inside the frame
                LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.8), Color.clear]), startPoint: .bottom, endPoint: .top)
                    .frame(width: 414, height: 272)
                
                
                
                
                VStack (alignment: .leading){
                    
                    Text("Halomi Salad")
                        .font(Font.custom("Helvetica", size: 24))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: 60, y: 60)
//                      .frame(width: 400)
//                      .padding()
                    
                    
                    HStack {
                      
                            
                        NavigationLink(destination: New_Recipe()) {
                            
                            Text("semi-hard cheese typically made from the milk of goats, sheep, or cows. It's known for its tangy taste and firm, chewy texture..")
                                .font(Font.custom("SF Pro Display", size: 12))
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .offset(x: 35, y: 20)
                                .multilineTextAlignment(.leading) 
//                                .frame(width: 400, height: 80)
                            
                            
                            Text("See All")
                                .font(Font.custom("SF Pro Display", size: 12))
                                .fontWeight(.medium)
                                .foregroundColor(.orangee)
                                .multilineTextAlignment(.trailing)
                                .underline()
                                .frame(width: 200 )
                        }
                    }.frame(width: 400, height: 100 )
                        .padding()
                    
                    
                }
                
            }.shadow(radius: 10)
                .padding()
            
        }
    }
}

        
        
struct Food_Recipes__: View {
    
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(.greyy)
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance}
    
    
    var body: some View {
       
    NavigationStack{
        VStack{
            
        }
        
        .navigationTitle("Food Recipe")
        .toolbar
        {
            
            ToolbarItem(placement:
                    .navigationBarTrailing ) {
                        Button(action: {
                            print(" Add Recipe tapped")
                            
                        }) {
                            
                            Image(systemName: "plus")
                                .foregroundColor(.orangee)
                        }
                    }
        }
        
        ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ForEach(0..<5) { _ in
                            CardView()
                                .frame(width: 800, height: 280)
                        }
                    }
                    .padding()
                }
        
        
        
        
        
        
    }
  
        
    }
}

     
#Preview {
    Food_Recipes__()
}
