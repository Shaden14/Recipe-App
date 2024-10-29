//
//  CardView.swift
//  Recipe App
//
//  Created by Shaden Alhumood on 26/04/1446 AH.
//

import SwiftUI

struct CardView: View {
    
    let recipeName: String = "Halomi Salad"
    let recipeDescription: String = "semi-hard cheese typically made from the milk of goats, sheep, or cows. It's known for its tangy taste and firm, chewy texture.."

    
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
                
                Text(recipeName)
                    .font(Font.custom("Helvetica", size: 24))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .offset(x: 25, y: -55)
                
                Spacer()
                    
                    HStack  {
                         
                        NavigationLink(destination: Recipe_Information_Page()) {
                            
                            Text(recipeDescription)
                                .font(Font.custom("SF Pro Display", size: 12))
                                .fontWeight(.medium)
                                .foregroundColor(Color.white)
                                .offset(x: 5, y: 30)

                                
                            
                            Text("See All")
                                .font(Font.custom("SF Pro Display", size: 12))
                                .fontWeight(.medium)
                                .foregroundColor(.orangee)
                                .underline()
                                .padding(.top,75)
                        }
                    }
                    .frame(width: 390, height: 100 )
                        .padding()
                    
                    
                
                
            }.shadow(radius: 10)
            
        }
    }
}

#Preview {
    CardView()
}
