//
//  ContentView.swift
//  Fast post
//
//  Created by Alfredo Gonzalez Galicia on 21/09/21.
//

import SwiftUI

let height:CGFloat = 600



struct ContentView: View {
    var body: some View {
        HStack(alignment:.top, spacing:0){
            ChoosePanelContainer()
            MainPanelContainer()
            
            }.frame(maxWidth: 960, maxHeight: height).cornerRadius(17).overlay(
            RoundedRectangle(cornerRadius: 17).stroke(Color(.white), lineWidth: 1.2).frame(maxWidth: 958, maxHeight: 598)
        ).opacity(0.95)
    }
}



struct ChoosePanelContainer:View{
    var body: some View{
        ZStack(alignment:.top){
            LinearGradient(gradient: Gradient(colors: [Color("white3"), Color("white4")]), startPoint: .topLeading, endPoint: .bottomTrailing).opacity(1.0)
        }.frame(width: 310).opacity(1.0).overlay(
          
            ZStack{
                Image("Ellipse").resizable().scaledToFit().frame(width: 350, height: 350).offset(x: 150.0, y: 150.0).blur(radius: 11.0).opacity(0.5)
                
                ChoosePanel()

            }
            
        )
    }
}


struct MainPanelContainer:View{
    var body: some View{
        ZStack{
            BackgroundHero()
            Image("Ellipse1").resizable().scaledToFit().frame(width: 250, height: 250).offset(x: 100, y: -200.0).opacity(1)
                MainPanel()
            }
    }
}

struct MainPanel:View{
    var body: some View{
            VStack(alignment: .leading){
                Text("What would you like share?").foregroundColor(Color(.black)).font(.custom("Poppins-Regular",size: 20)).padding(.top, 50).padding(.leading, 50)
                
                Text("Drag a picture").foregroundColor(Color("font")).font(.custom("Poppins-Regular", size: 13)).padding(.leading, 58).padding(.top, 38)
                
                AddButton()
                
                Text("Description").foregroundColor(Color("font")).font(.custom("Poppins-Regular", size: 13)).padding(.leading, 58).padding(.top, 10)
                
                DescriptionButton()
                
            }.frame(width: 650, height: height, alignment: .topLeading)
        }
}

struct BackgroundHero:View{
    var body: some View{
        Text("").frame(maxWidth: 650, maxHeight: height).overlay(
            LinearGradient(gradient: Gradient(colors: [Color("blue-dark"), Color("blue-dark"), Color("blue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
                
       LinearGradient(gradient: Gradient(colors: [Color("white"), Color("white1")]), startPoint: .topTrailing, endPoint: .bottomLeading)
        
    }
}



struct AddButton:View{
    var body: some View{
        ZStack(alignment: .center){
            RoundedRectangle(cornerRadius: 17).strokeBorder(Color.white.opacity(0.7), lineWidth: 1.2).background(RoundedRectangle(cornerRadius:17).fill(LinearGradient(gradient: Gradient(colors: [Color("white"), Color("white1")]), startPoint: .topLeading, endPoint: .bottomTrailing))).frame(width: 100, height: 130)
            Image("equis")
        }.padding(.leading, 60).padding(.top, 10)
    }
}


struct DescriptionButton:View{
    var body: some View{
        RoundedRectangle(cornerRadius: 17).strokeBorder(Color.white.opacity(0.7), lineWidth: 1.2).background(RoundedRectangle(cornerRadius:17).fill(LinearGradient(gradient: Gradient(colors: [Color("white"), Color("white1")]), startPoint: .topLeading, endPoint: .bottomTrailing))).frame(width: 420, height: 100).padding(.leading, 60).padding(.top, 10)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}


struct ChoosePanel:View{
    var body: some View{
        VStack{
            VStack{
                Image("user").resizable().aspectRatio(contentMode: .fill).frame(width:80, height: 93).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Text("Alfredo G.G").tracking(0.7).padding(.top, 5).foregroundColor(.black).font(.custom("Poppins-Medium", size: 17))
            
                VStack(alignment:.leading){
                    OptionLabel(imageName: "facebook", text: "Facebook")
                    OptionLabel(imageName: "twitter", text: "Twitter", paddingTop: 24)
                    OptionLabel(imageName: "instagram", text: "Instagram", paddingTop: 24)
                    OptionLabel(imageName: "linkedin", text: "Linkedln", paddingTop: 24)
                }.padding(.top, 20).frame(width:310)
            }.padding(.top, 50)
          
            Spacer()
        }.frame(height:height)
    }
}



struct OptionLabel: View{
    
    @State var isOn = false
    
    var imageName:String
    var text:String
    var paddingTop:CGFloat = 0
    
    var body: some View{
        HStack(spacing:12){
            Image(imageName).resizable().frame(width: 33, height: 33)
            Text(text).foregroundColor(Color("font")).font(.custom("Poppins-Medium", size: 14))
            Spacer()
            Toggle("", isOn: $isOn).toggleStyle(SwitchToggleStyle())
        }.frame(width:205).padding(.top, self.paddingTop)
    }
}

