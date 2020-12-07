//
//  ExplainationView.swift
//  NARUTOeBook
//
//  Created by lin1999 on 2020/10/29.
//

import SwiftUI

struct ExplanationRow: View {
    let Explanation: term
    
    var body: some View {
        HStack{
            Text(Explanation.name)
        }
        Spacer()
    }
}

struct ExplanationRow_Previews: PreviewProvider {
    static var previews: some View {
        ExplanationRow(Explanation: term(name: "忍者種類", contents: [""], details: [""]))
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
