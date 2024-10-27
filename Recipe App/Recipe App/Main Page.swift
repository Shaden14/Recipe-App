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
            List{
                
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
            
        }
                            VStack (alignment: .center) {
                                Spacer()
                                Image(systemName:"fork.knife.circle")
                                    .resizable()
                                    .frame(width: 320, height: 320)
                                    .foregroundColor(.orangee)
                                    .offset(y:-140)
                                    .padding()
                                Text("There,s no Recipe yet")
                                    .font(.system(size: 34))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .offset(y:-140)
                                    .padding(.top, 24)
                                
                                Text("Please Add your recipes")
                                    .font(.system(size: 22))
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: 500, maxHeight: 500)
                                    .offset(y:-140)

                            }
            
                }
        }

#Preview {
    Main_Page()
}
