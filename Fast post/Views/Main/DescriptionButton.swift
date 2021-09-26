//
//  DescriptionButton.swift
//  Fast post
//
//  Created by Alfredo Gonzalez Galicia on 26/09/21.
//

import SwiftUI

struct DescriptionButton:View{
    var body: some View{
        RoundedRectangle(cornerRadius: 17).strokeBorder(Color.white.opacity(0.7), lineWidth: 1.2).background(RoundedRectangle(cornerRadius:17).fill(LinearGradient(gradient: Gradient(colors: [Color("white"), Color("white1")]), startPoint: .topLeading, endPoint: .bottomTrailing))).frame(width: 420, height: 100).padding(.leading, 60).padding(.top, 10)
    }
}

