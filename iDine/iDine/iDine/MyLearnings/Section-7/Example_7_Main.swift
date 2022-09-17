//
//  Example_7_Main.swift
//  iDine
//
//  Created by Sagar Kadam on 17/09/22.
//

import SwiftUI

struct Example_7_Main: View {
    var body: some View {
        Group {
            NavigationLink(destination: Example_7_1()) {
                Text("1. What’s the difference between @ObservedObject, @State, and @EnvironmentObject?")
            }
        }
    }
}

struct Example_7_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_7_Main()
    }
}
