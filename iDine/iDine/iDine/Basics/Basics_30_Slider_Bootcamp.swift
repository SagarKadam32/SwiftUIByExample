//
//  Basics_30_Slider_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 15/02/23.
//

import SwiftUI

struct Basics_30_Slider_Bootcamp: View {
    
    @State var sliderValue1: Double = 10
    @State var sliderValue2: Double = 3
    @State var sliderValue3: Double = 3
    @State var sliderValue4: Double = 3
    @State var color: Color = .red

    
    var body: some View {

        VStack {
            VStack {
                Text("Basic Slider 1")
                Text("\(sliderValue1)")
                Slider(value: $sliderValue1)
                    .accentColor(.red)
                
                Text("Slider 2")
                Text("\(sliderValue2)")
                Slider(value: $sliderValue2, in: 1...5)
                

            }

            VStack {
                Text("Slider 3")
                Text(
                    String(format: "%.2f", sliderValue3)
                )
                Slider(value: $sliderValue3,
                       in: 1...5,
                       step: 0.5)
                    .accentColor(.green)
                
                Text("Slider 4")
                Text("\(sliderValue4)")
            }
            
            /*
            Slider(
                value: $sliderValue4,
                in: 1...5,
                step: 5
            ) {
                Text("Speed")
            } minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
                Text("5")
            } onEditingChanged: { editing in
                color = .green
            }
             */
        }
        .padding(20)

    }
}

struct Basics_30_Slider_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_30_Slider_Bootcamp()
    }
}
