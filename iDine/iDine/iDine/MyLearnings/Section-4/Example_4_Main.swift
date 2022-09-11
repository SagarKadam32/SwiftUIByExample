//
//  Example_4_Main.swift
//  iDine
//
//  Created by Sagar Kadam on 11/09/22.
//

import SwiftUI

struct Example_4_Main: View {
    var body: some View {
        Group {
            NavigationLink(destination: Example_4_1()) {
                Text("1. Working with state\n How to create a tappable button\n How to disable the overlay color for images inside Button and NavigationLink")
            }
        }
    }
}

struct Example_4_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_Main()
    }
}
