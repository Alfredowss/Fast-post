//
//  CustomButton.swift
//  Fast post
//
//  Created by Alfredo Gonzalez Galicia on 25/09/21.
//

import SwiftUI

struct CustomButton: ButtonStyle {
    
  func makeBody(configuration: Configuration) -> some View {
    configuration.label.foregroundColor(.black)
        .animation(.easeIn)
        .padding(.horizontal,15)
        .padding(.vertical, 5)
        .background(RoundedRectangle(cornerRadius: 9)
                        .fill(Color("white")))
        .shadow(color: Color.gray,radius: 2, x:6, y:5)
        .scaleEffect(configuration.isPressed ? 0.15 : 1)
  }
}
