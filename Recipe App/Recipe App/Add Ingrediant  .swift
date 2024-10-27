//
//  Add Ingrediant  .swift
//  Recipe App
//
//  Created by Shaden Alhumood on 20/04/1446 AH.
//

import SwiftUI

struct Add_Ingrediant__: View {
    
    @State private var showPopup = false
    
    var body: some View {
        ZStack {
                    VStack {
                        Text("Main Content View")
                            .font(.largeTitle)
                            .padding()

                        Button(action: {
                            showPopup.toggle()
                        }) {
                            Text("Show Popup")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.orangee)
                                .cornerRadius(10)
                        }
                    }
                    // Display popup if `showPopup` is true
                    if showPopup {
                        Color.black.opacity(0.4)
                            .ignoresSafeArea()
                            .onTapGesture {
                                showPopup = false
                            }
                        CustomPopupView()
                            .transition(.scale)
                    }
                }
                .animation(.easeInOut, value: showPopup)
            }
        }



#Preview {
    Add_Ingrediant__()
}
