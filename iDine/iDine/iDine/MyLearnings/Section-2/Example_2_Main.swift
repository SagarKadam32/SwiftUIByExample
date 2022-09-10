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
            
            NavigationLink(destination: Example_2_3()) {
                Text("3. How to provide relative sizes using GeometryReader")
            }
            
            NavigationLink(destination: Example_2_4()) {
                Text("4. How to place content outside the safe area")
            }
            
            NavigationLink(destination: Example_2_5()) {
                Text("5. How to return different view types")
            }
            
            NavigationLink(destination: Example_2_6()) {
                Text("6.  How to create views in a loop using ForEach")
            }
        }
    }
}

struct Example_2_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_2_Main()
    }
}
