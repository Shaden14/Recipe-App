//
//  Main Page.swift
//  Recipe App
//
//  Created by Shaden Alhumood on 18/04/1446 AH.
//

import SwiftUI

struct Main_Page: View {
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(.greyy)
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance}
    
    var body: some View  {
        

            
            NavigationStack{
                
                VStack (alignment: .center) {
                    
                    Spacer()
                    
                    Image(systemName:"fork.knife.circle")
                        .resizable()
                        .frame(width: 320, height: 320)
                        .foregroundColor(.orangee)
                        .padding()
                    Text("There,s no Recipe yet")
                        .font(.system(size: 34))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                    Text("Please Add your recipes")
                        .font(.system(size: 22))
                        .foregroundColor(.gray)
                        .padding()
                    
                    Spacer()
                    
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
                
                
       
                
            }
    }
        }

#Preview {
    Main_Page()
}
