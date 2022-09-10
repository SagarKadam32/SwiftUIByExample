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
                Text("1. How to create stacks using VStack and HStack\n How to customize stack layouts with alignment and spacing\n How to force views to one side inside a stack using Spacer")
            }
            NavigationLink(destination: Example_3_2()) {
                Text("2. How to make a fixed size Spacer")
            }
        }
    }
}

struct Example_3_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_3_Main()
    }
}
