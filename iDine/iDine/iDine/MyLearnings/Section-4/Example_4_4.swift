//
//  Example_4_4.swift
//  iDine
//
//  Created by Sagar Kadam on 12/09/22.
//

import SwiftUI

struct Example_4_4: View {
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor = "Red"
    var body: some View {
        VStack {
            Picker("Please choose a color", selection: $selectedColor) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            
            Text("You selected : \(selectedColor)")
        }

    }
}

struct Example_4_4_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_4()
    }
}
