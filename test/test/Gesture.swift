//
//  Gesture.swift
//  test
//
//  Created by Shaden Alhumood on 24/04/1446 AH.
//

import SwiftUI

struct Gesture: View {
    @State private var flag = false
    var body: some View {
        Text("Tap Me")
                  .font(.largeTitle)
                  .foregroundColor(.white)
                  .padding(15)
                  .background(flag ? Color.green : Color.yellow)
                  .onTapGesture {
                                  flag.toggle()
                              }
    }
}

#Preview {
    Gesture()
}
