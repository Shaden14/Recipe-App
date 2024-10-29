//
//  CustomPopupView.swift
//  Recipe App
//
//  Created by Shaden Alhumood on 20/04/1446 AH.
//

import SwiftUI



struct CustomPopupView: View {
  
    
    
@State var digitData = 1
    // Text Ingrediant Name
    let ingrediantName: String = "Ingrediant Name"
    @State private var ingrediantText: String = ""
    
    // Text Measurment
    let measurmentTital: String = "Measurment"
    
    // choose Measurment spoon or cup
    enum SelectedButton {
       case spoonButton, cupButton
    }
    @State private var selectedButton: SelectedButton?

    
    
    
    
var body: some View {

     VStack {
    
    
    Text(ingrediantName)
        .font(Font.custom("SF Pro", size: 20))
        .fontWeight(.bold)
    
    TextField("Ingrediant Name", text: $ingrediantText)
        .padding(.horizontal)
        .fontWeight(.regular)
        .font(.system(size: 14))
        .frame(width: 275, height: 39)
        .background(Color.gray)
        .cornerRadius(8)
    
        .padding()
    
    
    Text(measurmentTital)
        .font(Font.custom("SF Pro", size: 20))
        .fontWeight(.bold)
  
    
    HStack {
        Button("🥄 Spoon") {
            selectedButton = .spoonButton  // Select the first button
        }
        .padding()
        .background(selectedButton == .spoonButton ? Color.orangee : Color.orangee)
        .foregroundColor(.white)
        .cornerRadius(8)
        
        
        Button("🥛 Cup") {
            selectedButton = .cupButton  // Select the second button
        }
        .padding()
        .background(selectedButton == .cupButton ? Color.orangee : Color.orangee)
        .foregroundColor(.white)
        .cornerRadius(8)
        
        
    }
    
    Text(" Serving")
        .font(Font.custom("SF Pro", size: 20))
        .fontWeight(.bold)
    
    
    ZStack{
        
 
        
        HStack{
          
            ZStack{
                
                Rectangle()
                    .frame(width: 241, height: 36)
                    .foregroundColor(.gray)
                
                
                
                
                HStack {
                    HStack {
                        Button {
                            if digitData == 1{}
                            else {
                                digitData = digitData - 1
                            }
                        }  label: {
                            
                            Image(systemName: "minus.square")
                                .padding()
                                .foregroundColor(.orangee)
                                .font(.system(size: 27))
                            
                        }
                        
                        
                        Text("\(digitData)")
                            .font(.system(size: 20))
                        
                        
                        Button {
                            if digitData == 10 {}
                            else {
                                digitData = digitData + 1
                            }
                        }  label: {
                            
                            Image(systemName: "plus.square")
                                .padding()
                                .foregroundColor(.orangee)
                                .font(.system(size: 27))
                        }
                    }
                }     .frame(width: 270, alignment: .leading)

                          
        HStack{
            
            Spacer()
            
            Rectangle()
                .fill(Color.orangee!)
                .frame(width: 145, height: 36)
                .overlay(
                    Group {
                        if let selected = selectedButton {
                            switch selected {
                            case .spoonButton:
                                Text("🥄 Spoon")
                                    .foregroundColor(.white)
                            case .cupButton:
                                Text("🥛 Cup")
                                    .foregroundColor(.white)
                                
                            }
                        } else {
                            Text("")
                                .foregroundColor(.gray)
                        }
                    }
                )
                .cornerRadius(4)
                .animation(.easeInOut, value: selectedButton)  // Add smooth transition
        }  .frame(width: 300, alignment: .leading)
    }
        
}
}
            

        
        
        HStack{
            Button(action: {
                // Action for button inside popup
            }) {
                Text("Cancel")
                    .foregroundColor(.orangee)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10)
            }
            
            Button(action: {
                // Action for button inside popup
            }) {
                Text("Add")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orangee)
                    .cornerRadius(10)
            }
            
        }
        
    }.padding()
            .background(Color.greyy)
            .cornerRadius(12)
            .shadow(radius: 20)
            .frame(maxWidth: 300)
            
            
            }
          
        }
              
           
    
    


#Preview {
    CustomPopupView()
}
