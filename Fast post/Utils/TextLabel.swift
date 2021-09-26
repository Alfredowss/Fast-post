//
//  TextLabel.swift
//  Fast post
//
//  Created by Alfredo Gonzalez Galicia on 25/09/21.
//

import SwiftUI

enum typeText:String{
    case Medium, Regular
}

struct TextLabel:View{
    let font:String = "Poppins"
    var content:String
    var type:typeText
    var size:CGFloat
    var color: Color = Color("font")
    var tracking:CGFloat?
    
    var body: some View{
        if(self.tracking == nil){
            Text(content).font(.custom("\(self.font)-\(type.rawValue)" , size: size))
                .foregroundColor(self.color)
        }else{
            Text(content).font(.custom("\(self.font)-\(type.rawValue)" , size: size))
                .foregroundColor(self.color).tracking(tracking!)
        }
    }
}
