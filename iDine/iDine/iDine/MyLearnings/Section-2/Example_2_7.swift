//
//  Example_2_7.swift
//  iDine
//
//  Created by Sagar Kadam on 10/09/22.
//

import SwiftUI

struct Example_2_7: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                HStack {
                    Text("The rain Spain falls mainly on the Spaniards.")
                        .background(.gray)
                    Text("Knowledge is power, France is bacon.")
                        .background(.red)
                }
                .font(.largeTitle)
                .background(.blue)
                
                HStack {
                    Text("The rain Spain falls mainly on the Spaniards.")
                        .background(.gray)

                    Text("Knowledge is power, France is bacon.")
                        .layoutPriority(1)
                        .background(.red)
                }
                .font(.largeTitle)
                .background(.green)
              }
                .padding()
        }
    }
}

struct Example_2_7_Previews: PreviewProvider {
    static var previews: some View {
        Example_2_7()
    }
}
