//
//  Example_5_Main.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

struct Example_5_Main: View {
    var body: some View {
        Group {
            NavigationLink(destination: Example_5_1()) {
                Text("1. How to detect when your app moves to the background or foreground with scenePhase")
            }
        }
    }
}

struct Example_5_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_5_Main()
    }
}
