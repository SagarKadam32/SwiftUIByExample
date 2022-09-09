//
//  Example_2_1.swift
//  iDine
//
//  Created by Sagar Kadam on 09/09/22.
//

import SwiftUI

struct Example_2_1: View {
    var body: some View {
        VStack {
            
            Button {
                print("Button Tapped")
            } label: {
                Text("Welcome")
                    .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 200)
                    .font(.largeTitle)
            }
            
            Text("Please log in")
                .frame(width: .infinity, height: .infinity)
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(.red)
        }
    }
}

struct Example_2_1_Previews: PreviewProvider {
    static var previews: some View {
        Example_2_1()
    }
}
