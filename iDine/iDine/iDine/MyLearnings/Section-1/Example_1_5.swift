//
//  Example_1_5.swift
//  iDine
//
//  Created by Sagar Kadam on 08/09/22.
//

import SwiftUI

struct Example_1_5: View {
    @State private var amount = 50.0
    
    var body: some View {
        NavigationView {
            VStack(spacing:10) {
                Text("ABC")
                    .font(.custom("AmericanTypewriter", size: 72))
                    .kerning(amount)
                
                Text("ABC")
                    .font(.custom("AmericanTypewriter", size: 72))
                    .tracking(amount)
                
                Slider(value: $amount, in: 0...100) {
                    Text("Adjust the amount of spacing")
                }
            }
            .padding()
            .navigationTitle("5. How to add spacing between letters in text")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct Example_1_5_Previews: PreviewProvider {
    static var previews: some View {
        Example_1_5()
    }
}
