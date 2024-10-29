//
//  Food Recipes  .swift
//  Recipe App
//
//  Created by Shaden Alhumood on 19/04/1446 AH.
//

import SwiftUI


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
                        NavigationLink(destination: New_Recipe()) {
                            Image(systemName: "plus")
                                .foregroundColor(.orangee)
            }
                    }
        }
        
        ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ForEach(0..<1) { _ in
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
