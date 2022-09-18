//
//  Example_8_Main.swift
//  iDine
//
//  Created by Sagar Kadam on 17/09/22.
//

import SwiftUI

struct Example_8_Main: View {
    var body: some View {
        Group {
            NavigationLink(destination: Example_8_1()) {
                Text("1. How to create a list of static items")
            }
        }
    }
}

struct Example_8_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_8_Main()
    }
}
