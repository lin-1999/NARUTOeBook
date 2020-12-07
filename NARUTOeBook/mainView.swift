//
//  mainView.swift
//  NARUTOeBook
//
//  Created by lin1999 on 2020/10/17.
//

import SwiftUI

struct mainView: View {
    var body: some View {
        NavigationView{
            List {
                MainCharacterSection()
                ExplainationSection()
                PictureWallSection()
            }
            .navigationBarTitle("火影忍者")
            .buttonStyle(PlainButtonStyle())
        }
    }
}

struct charactersPicture: View {
    var name: String
    
    var body: some View {
        
        Image("\(name)\(1)")
            .resizable()
            .scaledToFill()
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}


struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}

struct MainCharacterSection: View {
    var body: some View {
        Section(header: Text("主要角色")){
            ScrollView(.horizontal) {
                HStack(spacing: 10.0) {
                    ForEach(0 ..< characters.count) { (item) in
                        NavigationLink(destination: introductionView(icon: characters[item].icon, name: characters[item].name, description: characters[item].description)) {charactersPicture(name: characters[item].icon)}
                    }
                }
                .frame(height: 200)
            }
        }
    }
}

struct ExplainationSection: View {
    var body: some View {
        Section(header: Text("用語解說")){
            ScrollView(.horizontal) {
                VStack(alignment: .leading) {
                    ForEach(terms.indices) { (index) in
                        DisclosureGroup(
                            content: {
                                VStack(alignment: .leading) {
                                    ForEach(terms[index].contents.indices){ (index2) in
                                        DisclosureGroup(
                                            content: {
                                                VStack(alignment: .leading){
                                                    Text(terms[index].details[index2])
                                                }
                                                .padding()
                                                .frame(width: 300, height: 190)
                                            },
                                            label: {
                                                Label("\(terms[index].contents[index2])", systemImage: "bookmark.fill")
                                            }
                                        )
                                    }
                                }.padding()
                            },
                            label: {
                                Label("\(terms[index].name)", systemImage: "text.book.closed.fill")
                            }
                        )
                        .frame(width: 350)
                    }
                }
                .padding()
            }
        }
    }
}

struct PictureWallSection: View {
    var body: some View {
        Section(header: Text("照片牆")) {
            ScrollView(.vertical) {
                let columns = [
                    GridItem(),
                    GridItem()]
                LazyVGrid(columns: columns) {
                    ForEach(1..<10) { (index) in
                        VStack {
                            Image("all\(index)")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 180)
                                .clipped()
                            Divider()
                        }
                        .overlay(
                            Image(systemName: "\(index).circle.fill")
                                .font(.largeTitle)
                            , alignment: .topLeading)
                    }
                }
                
            }
        }
    }
}
