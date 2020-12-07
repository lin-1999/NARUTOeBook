//
//  characterView.swift
//  NARUTOeBook
//
//  Created by lin1999 on 2020/10/19.
//

import SwiftUI

struct characterView: View {
    var body: some View {
        
        NavigationView{
            List{
                ForEach(0 ..< characters.count) { (item) in
                    NavigationLink(destination: introductionView(icon: characters[item].icon, name: characters[item].name, description: characters[item].description)) {
                        characterList(icon: characters[item].icon, name: characters[item].name)
                    }
                }.frame(height: 200)
            }
            .navigationBarTitle("角色介紹")
        }
    }
}

struct characterList: View {
    var icon: String
    var name: String
    
    var body: some View {
        
        HStack (spacing: 30){
            Image("\(icon)1")
                .resizable()
                .scaledToFill()
                .frame(width: 140, height: 140)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            
            Text(name)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.trailing)
        }
        .frame(width: 350, height: 180, alignment: .leading)
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 192/255, green: 75/255, blue: 90/255), Color(red: 255/255, green: 238/255, blue: 152/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 3))
        
    }
}

struct introductionView: View {
    var icon: String
    var name: String
    var description: String
    
    @State var picshow = false
    var body: some View {
        
        VStack{
            if picshow{
                introView(icon: icon, name: name, description: description)
                    .transition(.slide)
            }
        }
        .animation(.linear(duration:1.3))
        .onAppear {
            self.picshow = true
        }
        .onDisappear {
            self.picshow = false
        }
    }
    
}

struct characterView_Previews: PreviewProvider {
    static var previews: some View {
        characterView()
    }
}

struct introView: View {
    
    var icon: String
    var name: String
    var description: String
    
    var body: some View {
        ScrollView{
            VStack (spacing: 30){
                TabView {
                    ForEach(1..<4){ (index) in
                        Image("\(icon)\(index)")
                            .resizable()
                            .scaledToFit()
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .frame(height: 400)
                
                HStack{
                    Text(name)
                        .fontWeight(.heavy)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                    
                    Text("  ( \(icon) )")
                        .fontWeight(.heavy)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                }
                
                Text(description)
                    .fontWeight(.heavy)
                    .frame(width: 300)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
        
    }
}
