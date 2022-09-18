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
            
            NavigationLink(destination: Example_8_2()) {
                Text("2. How to create a list of dynamic items")
            }
            
            NavigationLink(destination: Example_8_3()) {
                Text("3. How to let users delete rows from a list")
            }
        }
    }
}

struct Example_8_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_8_Main()
    }
}
