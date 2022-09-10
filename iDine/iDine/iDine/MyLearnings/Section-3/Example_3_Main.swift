//
//  Example_3_Main.swift
//  iDine
//
//  Created by Sagar Kadam on 10/09/22.
//

import SwiftUI

struct Example_3_Main: View {
    var body: some View {
        Group {
            NavigationLink(destination: Example_3_1()) {
                Text("1. How to give a view a custom frame")
            }
        }
    }
}

struct Example_3_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_3_Main()
    }
}
