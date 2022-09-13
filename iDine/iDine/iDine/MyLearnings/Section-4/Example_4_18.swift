//
//  Example_4_18.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

struct Example_4_18: View {
    var body: some View {
        VStack {
            Button("Buy: $0.99") {
                print("Buying…")
            }
            .buttonStyle(.bordered)
            
            Button("Buy: $0.99") {
                print("Buying for $0.99")
            }
            .buttonStyle(.borderedProminent)
            
            Button("Submit") {
                print("Submitting…")
            }
            .tint(.indigo)
            .buttonStyle(.borderedProminent)
            
            Button("Delete", role: .destructive) {
                print("Deleting…")
            }
            .buttonStyle(.borderedProminent)
            
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-get-bordered-buttons-that-stand-out", title: "Bordered Buttons")
        }
        .padding()

    }
}

struct Example_4_18_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_18()
    }
}
