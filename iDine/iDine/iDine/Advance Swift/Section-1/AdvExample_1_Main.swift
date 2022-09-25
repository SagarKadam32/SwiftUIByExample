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
            NavigationLink(destination: Adv_Example_1_2()) {
                Text("2. How to use @ViewBuilder in SwiftUI")
            }
            NavigationLink(destination: Adv_Example_1_3(colorTheme: DefaultColorTheme(), datasource: DefaultDataSource())) {
                Text("3. How to use Protocols in Swift")
            }
        }
    }
}

struct AdvExample_1_Main_Previews: PreviewProvider {
    static var previews: some View {
        AdvExample_1_Main()
    }
}
