//
//  Example_1_7.swift
//  iDine
//
//  Created by Sagar Kadam on 08/09/22.
//

import SwiftUI

struct Example_1_7: View {
    @State private var name = "Sagar S Kadam"
    var body: some View {
        NavigationView {
            VStack(spacing:10) {
                
                TextField("Shout your name at me", text: $name)
                    .textFieldStyle(.roundedBorder)
                    .textCase(.uppercase)
                    .padding(.horizontal)
                
                Spacer()

            }
            .navigationTitle("7. How to make TextField uppercase or lowercase using textCase()")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Example_1_7_Previews: PreviewProvider {
    static var previews: some View {
        Example_1_7()
    }
}
