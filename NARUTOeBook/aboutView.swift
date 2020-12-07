//
//  aboutView.swift
//  NARUTOeBook
//
//  Created by lin1999 on 2020/10/19.
//

import SwiftUI
import UIKit
import SafariServices

struct aboutView: View {
    @State var show = false
    @State var urlString = ""
    @State var imgshow = false
    var body: some View {
        VStack{
            Text("關於")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .frame(height: 1)
                .offset(y: -20)
            Image("all2")
                .resizable()
                .scaledToFit()
                .frame(width: 400)
            
            Text("相關連結")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .padding()
                .foregroundColor(.black)
                .background(Color.yellow)
                .cornerRadius(30)
            
            HStack {
                Button(action: {
                    self.show.toggle()
                }) {
                    Image(systemName: "link")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .offset(x: 0, y: 20)
                        .padding()
                }.sheet(isPresented: $show) {
                    SafariView(url:URL(string: "https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwiyx_z9rrbtAhUKGqYKHTSiA60QFjABegQIARAC&url=https%3A%2F%2Fbaike.baidu.com%2Fitem%2F%25E7%2581%25AB%25E5%25BD%25B1%25E5%25BF%258D%25E8%2580%2585%2F8702&usg=AOvVaw1PXfzKqthDmcGz7Wr8hQE5")!)
                }.buttonStyle(PlainButtonStyle())
            }
        }
        
        
    }
}

struct aboutView_Previews: PreviewProvider {
    static var previews: some View {
        aboutView()
    }
}

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController,
                                context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
}
