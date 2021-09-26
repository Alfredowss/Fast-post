//
//  AddButton.swift
//  Fast post
//
//  Created by Alfredo Gonzalez Galicia on 26/09/21.
//

import SwiftUI

struct AddButton:View{
    @State var buttonIsHover:Bool = false
    
    
    var body: some View{
        ZStack(alignment: .center){
            RoundedRectangle(cornerRadius: 17).strokeBorder(Color.white.opacity(0.7), lineWidth: 1.2).background(RoundedRectangle(cornerRadius:17).fill(LinearGradient(gradient: Gradient(colors: [Color("white"), Color("white1")]), startPoint: .topLeading, endPoint: .bottomTrailing))).frame(width: 100, height: 130)
            Image("equis")
        }.padding(.leading, 60).padding(.top, 10).scaleEffect(buttonIsHover ? 0.9 : 1 ).onHover(perform: { _ in
            buttonIsHover.toggle()
        }).animation(.easeOut(duration: 0.17))
    }
}
