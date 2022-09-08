//
//  Example_1_11.swift
//  iDine
//
//  Created by Sagar Kadam on 09/09/22.
//

import SwiftUI

struct Example_1_11: View {
    let markdownText: LocalizedStringKey = "* This is **bold** text, this is *italic* text, and this is ***bold, italic*** text."

    var body: some View {
        VStack {
            Text("This is regular text.")
            Text("* This is **bold** text, this is *italic* text, and this is ***bold, italic*** text.")
            Text("~~A strikethrough example~~")
            Text("`Monospaced works too`")
            Text("Visit Apple: [click here](https://apple.com)")
            
            Text(markdownText)

            Spacer()
        }
        
    }
}

struct Example_1_11_Previews: PreviewProvider {
    static var previews: some View {
        Example_1_11()
    }
}
