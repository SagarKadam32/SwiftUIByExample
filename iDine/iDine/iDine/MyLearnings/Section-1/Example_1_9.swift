//
//  Example_1_9.swift
//  iDine
//
//  Created by Sagar Kadam on 09/09/22.
//

import SwiftUI

struct Example_1_9: View {
    @Environment(\.redactionReasons) var redactionReasons
    let bio = "The rain in Spain falls mainly on the Spaniards"


    var body: some View {
        NavigationView {
            VStack(spacing:10) {
                Text("This is placeholder text")
                    .font(.title)
                    .redacted(reason: .placeholder)
                
                
                VStack {
                    Text("This is placeholder text")
                    Text("And so is this")
                }
                .font(.title)
                .redacted(reason: .placeholder)
                
                if redactionReasons == .placeholder {
                    Text("Loading…")
                } else {
                    Text(bio)
                        .redacted(reason: redactionReasons)
                }
                
                Spacer()
            }
            .navigationTitle("9. How to mark content as a placeholder using redacted()")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Example_1_9_Previews: PreviewProvider {
    static var previews: some View {
        Example_1_9()
    }
}
