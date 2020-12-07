//
//  ExplainationView.swift
//  NARUTOeBook
//
//  Created by lin1999 on 2020/11/23.
//

import SwiftUI

struct ExplanationView: View {
    var body: some View {
        HStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(width: 80, height: 80)
            VStack(alignment: .leading){
                Text("ByeBye")
            }
        }
        Spacer()
    }
}

struct ExplanationList: View {
    var body: some View {
        List{
            //ExplanationRow(Explanation: term(name: "忍者種類"))
        }
    }
}



struct ExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        ExplanationView()
            .previewLayout(.sizeThatFits)
    }
}
