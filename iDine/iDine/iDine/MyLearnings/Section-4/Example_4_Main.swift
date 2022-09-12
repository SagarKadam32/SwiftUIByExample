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
            
            NavigationLink(destination: Example_4_2()) {
                Text("2. How to read text from a TextField\n How to add a border to a TextField\n How to add a placeholder to a TextField\n How to disable autocorrect in a TextField\n How to dismiss the keyboard for a TextField\n How to format a TextField for numbers\n How to create secure text fields using SecureField")
            }
            
            NavigationLink(destination: Example_4_3()) {
                Text("3. How to create a toggle switch")
            }
            
            NavigationLink(destination: Example_4_4()) {
                Text("4. How to create a picker and read values from it")
            }
        }
    }
}

struct Example_4_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_Main()
    }
}
