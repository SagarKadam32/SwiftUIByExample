//
//  Example_4_16.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

struct Example_4_16: View {
    @State private var username = ""
    
    var body: some View {

        VStack {
          
            TextField("Username", text: $username)
                .submitLabel(.join)
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-customize-the-submit-button-for-textfield-securefield-and-texteditor", title: "Customize the submit button")
        }
        .padding()

    }
}

struct Example_4_16_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_16()
    }
}
