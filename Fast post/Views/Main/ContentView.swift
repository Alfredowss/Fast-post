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
                HStack(alignment: .bottom){
                    TextLabel(content: "What would you like share?", type: .Regular, size: 20, color: .black).padding(.top, 50).padding(.leading, 50)
                    Spacer()
                    PopOverButton()
                }.frame(maxWidth:600, alignment: .leading)
                
                TextLabel(content: "Drag a picture", type: .Regular, size: 13).padding(.leading, 58).padding(.top, 38)
                AddButton()
                TextLabel(content: "Description", type: .Regular, size: 13).padding(.leading, 58).padding(.top, 10)
                
                DescriptionButton()
                
            }.frame(width: 650, height: height, alignment: .topLeading)
        }
}

struct PopOverButton: View{
    @State var popIsActive:Bool = false

    var body: some View{
        Button(action: {
            popIsActive.toggle()
        }, label: {
            Image("paint-brush").resizable().frame(width: 21, height: 21)
        }).popover(isPresented: $popIsActive, arrowEdge: .bottom, content: {
            VStack{
                PopOverLabel()
                PopOverLabel()
                PopOverLabel()
            }.padding(10)
        }).foregroundColor(.black).buttonStyle(CustomButton()).animation(.easeOut(duration: 0.2))
    }
}

struct PopOverLabel: View{
    var nameColor:String?
    
    var body: some View{
        HStack(spacing:4){
            Color(.black)
                .frame(width: 20, height: 20)
                .clipShape(Circle())
            Spacer()
            Text("Color-name")
        }
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



struct ChoosePanel:View{
    var body: some View{
        VStack{
            VStack{
                Image("user").resizable().aspectRatio(contentMode: .fill).frame(width:80, height: 93).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                TextLabel(content: "Alfredo G.G", type: .Medium, size: 17, color: .black, tracking:0.7)
            
                VStack(alignment:.leading){
                    SwitchLabel(imageName: "facebook", text: "Facebook")
                    SwitchLabel(imageName: "twitter", text: "Twitter", paddingTop: 24)
                    SwitchLabel(imageName: "instagram", text: "Instagram", paddingTop: 24)
                    SwitchLabel(imageName: "linkedin", text: "Linkedln", paddingTop: 24)
                }.padding(.top, 20).frame(width:310)
            }.padding(.top, 50)
          
            Spacer()
        }.frame(height:height)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
