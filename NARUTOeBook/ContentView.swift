//
//  ContentView.swift
//  NARUTOeBook
//
//  Created by lin1999 on 2020/10/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Tab()
            Music()
                .offset(y:335)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Tab: View {
    var body: some View {
        TabView{
            mainView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("主頁")
                }
            characterView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("角色介紹")
                }
            aboutView()
                .tabItem {
                    Image(systemName: "info.circle.fill")
                    Text("關於")
                }
        }
    }
}
