//
//  Example_4_7.swift
//  iDine
//
//  Created by Sagar Kadam on 12/09/22.
//

import SwiftUI

struct Example_4_7: View {
    @State private var age = 18
    
    var body: some View {
        VStack {
            Stepper("Enter your age", value: $age, in: 0...130)
            Text("Your age is \(age)")
            
            Stepper("Enter your age",onIncrement: {
                age += 1
            }, onDecrement: {
                age -= 1
            })
            Text("Your age is \(age)")

        }
        .padding()

    }
}

struct Example_4_7_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_7()
    }
}
