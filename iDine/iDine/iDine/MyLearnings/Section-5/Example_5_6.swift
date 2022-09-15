//
//  Example_5_6.swift
//  iDine
//
//  Created by Sagar Kadam on 15/09/22.
//

import SwiftUI

struct Example_5_6: View {
    @State private var userName = "sagarKadam"
    
    var body: some View {

        VStack {
            
            TextField("UserName", text: $userName)
                .textFieldStyle(.roundedBorder)
            /*
            PasteButton(payloadType: String.self) { strings in
                guard let first = strings.first else { return }
                username = first
            }
            .buttonBorderShape(.capsule)
            */
            
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-let-the-user-paste-data-into-your-app", title: "Paste Data into your app")
        }
        .padding()
    }
}

struct Example_5_6_Previews: PreviewProvider {
    static var previews: some View {
        Example_5_6()
    }
}
