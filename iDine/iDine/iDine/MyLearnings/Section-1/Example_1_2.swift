//
//  Example_1_2.swift
//  iDine
//
//  Created by Sagar Kadam on 08/09/22.
//

import SwiftUI

struct Example_1_2: View {
    var body: some View {
        NavigationView {
            VStack(spacing:10) {
                Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                    .padding()
                    .lineSpacing(15)
                    .font(.largeTitle)
                    .frame(width: 300)
                    .foregroundColor(.red)
                    .background(.yellow)

            }
            .navigationTitle("2. How to style text views with fonts, colors, line spacing, and more")
            .navigationBarTitleDisplayMode(.inline)
        }

    }
}

struct Example_1_2_Previews: PreviewProvider {
    static var previews: some View {
        Example_1_2()
    }
}
