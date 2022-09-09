//
//  Example_2_Main.swift
//  iDine
//
//  Created by Sagar Kadam on 09/09/22.
//

import SwiftUI

struct Example_2_Main: View {
    var body: some View {
        Group {
            NavigationLink(destination: Example_2_1()) {
                Text("1. How to give a view a custom frame")
            }
            
            NavigationLink(destination: Example_2_2()) {
                Text("2. How to control spacing around individual views using padding")
            }
        }
    }
}

struct Example_2_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_2_Main()
    }
}
