//
//  Example_6_Main.swift
//  iDine
//
//  Created by Sagar Kadam on 15/09/22.
//

import SwiftUI

struct Example_6_Main: View {
    var body: some View {

        Group {
            NavigationLink(destination: Example_6_1()) {
                Text("1. How to add a gesture recognizer to a view")
            }
            
            NavigationLink(destination: Example_6_2()) {
                Text("2. How to read tap and double-tap gestures")
            }
        }

    }
}

struct Example_6_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_6_Main()
    }
}
