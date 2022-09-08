//
//  Example_1_10.swift
//  iDine
//
//  Created by Sagar Kadam on 09/09/22.
//

import SwiftUI

struct Example_1_10: View {
    @Environment(\.redactionReasons) var redactionReasons
    var body: some View {
        NavigationView {
            VStack(spacing:10) {
  
                Text("Card Number")
                    .font(.headline)
                
                Text("1234 5678 9876 4321")
                    .privacySensitive()
                
                if redactionReasons.contains(.privacy) {
                    Text("[HIDDEN]")
                }else {
                    Text("1234 5678 9876 4321")
                }

                Spacer()
            }
            .redacted(reason: .privacy)
            .navigationTitle("10. How to mark content as private using privacySensitive()")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Example_1_10_Previews: PreviewProvider {
    static var previews: some View {
        Example_1_10()
    }
}
