//
//  AdvExample_1_Main.swift
//  iDine
//
//  Created by Sagar Kadam on 24/09/22.
//

import SwiftUI

struct AdvExample_1_Main: View {
    var body: some View {
        Group {
            NavigationLink(destination: Adv_Example_1_1()) {
                Text("1. How to use: Generics")
            }
        }
    }
}

struct AdvExample_1_Main_Previews: PreviewProvider {
    static var previews: some View {
        AdvExample_1_Main()
    }
}