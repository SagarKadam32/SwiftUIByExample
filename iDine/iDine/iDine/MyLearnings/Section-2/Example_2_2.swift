//
//  Example_2_2.swift
//  iDine
//
//  Created by Sagar Kadam on 09/09/22.
//

import SwiftUI

struct Example_2_2: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Using")
                Text("Swift UI")
                    .padding(.bottom, 10)
                Text("Rocks")
            }
            .background(.blue)
            
            VStack {
                Text("Using")
                Text("Swift UI")
                    .padding(50)
                Text("Rocks")
            }
            .background(.green)

            
            VStack {
                Text("Using")
                Text("SwiftUI")
                    .padding(.bottom, 100)
                Text("rocks")
            }
            .background(.yellow)

        }

    }
}

struct Example_2_2_Previews: PreviewProvider {
    static var previews: some View {
        Example_2_2()
    }
}
