//
//  Basics_29_Stepper_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 15/02/23.
//

import SwiftUI

struct Basics_29_Stepper_Bootcamp: View {
    @State var steppterValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack {
            Stepper("Basic Stepper with Value \(steppterValue)", value: $steppterValue)
                
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement , height: 100  )
            Stepper("Stepper Increment/Decrement") {
                // Increment
                incrementWidth(amount: 10)
                
            } onDecrement: {
                // Decrement
                incrementWidth(amount: -10)
            }

        }
        .padding(50)

    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

struct Basics_29_Stepper_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_29_Stepper_Bootcamp()
    }
}
