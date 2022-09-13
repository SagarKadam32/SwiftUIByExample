//
//  Example_4_9.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

struct Example_4_9: View {
    @State private var profileText = "Enter your bio"
    var body: some View {
        VStack {
            
            TextEditor(text: $profileText)
                .foregroundColor(.secondary)
                .padding(.horizontal)
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-multi-line-editable-text-with-texteditor", title: "Multi-Line Editable Text")
        }

    }
}

struct Example_4_9_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_9()
    }
}
