//
//  ContentView.swift
//  Fast post
//
//  Created by Alfredo Gonzalez Galicia on 21/09/21.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        ZStack{
            BackgroundHero()
            
            HStack(alignment:.top, spacing:0){
                ZStack(alignment:.top){
                    LinearGradient(gradient: Gradient(colors: [Color("white3"), Color("white4")]), startPoint: .topLeading, endPoint: .bottomTrailing).opacity(1.0)
                }.frame(width: 310).opacity(1.0).overlay(
                  
                    ChoosePanel()
                    
                )
                
                MainPanel()
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity).cornerRadius(17)
            
        }.frame(width: 960, height: 600, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).opacity(0.86).cornerRadius(17)
    }
}



struct BackgroundHero:View{
    var body: some View{
        Text("").frame(maxWidth: .infinity, maxHeight: .infinity).overlay(
            RoundedRectangle(cornerRadius: 17).fill(LinearGradient(gradient: Gradient(colors: [Color("blue"), Color("blue-dark")]), startPoint: .topLeading, endPoint: .bottomTrailing))
        )
                
        Image("Ellipse").offset(x: -410.0, y: 250.0).blur(radius: 9.0)
        Image("Ellipse").offset(x: -110.0, y: -300.0).blur(radius: 19.0)
        Image("Ellipse1").offset(x: 500, y: -300.0).blur(radius: 13.0)
        
        RoundedRectangle(cornerRadius: 17).fill(LinearGradient(gradient: Gradient(colors: [Color("white"), Color("white1")]), startPoint: .topTrailing, endPoint: .bottomLeading)).blur(radius: 1.0)
        
        RoundedRectangle(cornerRadius: 17).strokeBorder(Color.white, lineWidth: 1.5)
        
    }
}

struct MainPanel:View{
    var body: some View{
            VStack(alignment: .leading){
                Text("What would you like share?").foregroundColor(Color(.black)).font(.custom("Poppins-Regular",size: 20)).padding(.top, 50).padding(.leading, 50)
                
                Text("Drag a picture").foregroundColor(Color("font")).font(.custom("Poppins-Regular", size: 13)).padding(.leading, 58).padding(.top, 38)
                
                ZStack(alignment: .center){
                    RoundedRectangle(cornerRadius: 17).strokeBorder(Color.white.opacity(0.7), lineWidth: 1.5).background(RoundedRectangle(cornerRadius:17).fill(LinearGradient(gradient: Gradient(colors: [Color("white3"), Color("white4")]), startPoint: .topLeading, endPoint: .bottomTrailing))).frame(width: 100, height: 130)
                    Image("equis")
                }.padding(.leading, 60).padding(.top, 10)
                
                Text("Description").foregroundColor(Color("font")).font(.custom("Poppins-Regular", size: 13)).padding(.leading, 58).padding(.top, 10)
                
                RoundedRectangle(cornerRadius: 17).strokeBorder(Color.white.opacity(0.7), lineWidth: 1.2).background(RoundedRectangle(cornerRadius:17).fill(LinearGradient(gradient: Gradient(colors: [Color("white3"), Color("white4")]), startPoint: .topLeading, endPoint: .bottomTrailing))).frame(width: 420, height: 100).padding(.leading, 60).padding(.top, 10)
                
            }.frame(width: 650, height: 600, alignment: .topLeading)
        }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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
        }.frame(height:600).cornerRadius(17).border(Color.white.opacity(0.75), width: 1.2)
    }
}



struct OptionLabel: View{
    
    @State var isOn = false
    
    var imageName:String
    var text:String
    var paddingTop:CGFloat = 0
    
    var body: some View{
        HStack(spacing:16){
            Image(imageName).resizable().frame(width: 33, height: 33)
            Text(text).foregroundColor(Color("font")).font(.custom("Poppins-Regular", size: 13))
            Spacer()
            Toggle("", isOn: $isOn).toggleStyle(SwitchToggleStyle())
        }.frame(width:205).padding(.top, self.paddingTop)
    }
}
