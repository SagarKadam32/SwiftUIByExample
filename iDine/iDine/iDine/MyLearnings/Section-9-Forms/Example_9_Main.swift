//
//  Example_9_Main.swift
//  iDine
//
//  Created by Sagar Kadam on 18/09/22.
//

import SwiftUI

struct Example_9_Main: View {
    var body: some View {
        Group {
            NavigationLink(destination: Example_9_1()) {
                Text("1. Basic form design")
            }
        }
    }
}

struct Example_9_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_9_Main()
    }
}
