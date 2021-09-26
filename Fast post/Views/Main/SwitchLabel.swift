//
//  SwitchLabel.swift
//  Fast post
//
//  Created by Alfredo Gonzalez Galicia on 25/09/21.
//

import SwiftUI

struct SwitchLabel: View{
    
    @State var isOn = false
    
    var imageName:String
    var text:String
    var paddingTop:CGFloat = 0
    
    var body: some View{
        HStack(spacing:12){
            Image(imageName).resizable().frame(width: 33, height: 33)
            TextLabel(content: self.text, type: .Medium, size: 14)
            Spacer()
            Toggle("", isOn: $isOn).toggleStyle(SwitchToggleStyle())
        }.frame(width:205).padding(.top, self.paddingTop)
    }
}





struct BodyFont: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.black)
            .padding()
            .background(Color.white)
    }
}
