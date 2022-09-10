//
//  Example_3_1.swift
//  iDine
//
//  Created by Sagar Kadam on 10/09/22.
//

import SwiftUI

struct Example_3_1: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text("SwiftUI")
                    Text("rocks")
                }
                
                HStack {
                    Text("SwiftUI")
                    Text("rocks")
                }
                
                VStack(spacing: 50) {
                    Text("SwiftUI")
                    Text("rocks")
                }
                
                VStack {
                    Text("SwiftUI")
                    Divider()
                    Text("rocks")
                }
                
                VStack(alignment: .leading) {
                    Text("SwiftUI")
                    Text("rocks")
                }
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("SwiftUI")
                    Text("rocks")
                }
                
                Text("How to force views to one side inside a stack using Spacer")
                    .font(.headline)
                VStack {
                    Spacer()
                    Text("Hello World")
                    Spacer()
                    Spacer()
                }
            }
        }


    }
}

struct Example_3_1_Previews: PreviewProvider {
    static var previews: some View {
        Example_3_1()
    }
}
