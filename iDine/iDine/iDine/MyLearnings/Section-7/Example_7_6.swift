//
//  Example_7_6.swift
//  iDine
//
//  Created by Sagar Kadam on 17/09/22.
//

import SwiftUI

class NumbersOnly: ObservableObject {
    @Published var value = "" {
        didSet {
            let filtered = value.filter { $0.isNumber }
            
            if value != filtered {
                value = filtered
            }
        }
    }
}

struct Example_7_6: View {
    @State var currentDate = Date()
    @State var timeRemaining = 60
    @ObservedObject var input = NumbersOnly()
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {

            Text("\(currentDate)")
                .onReceive(timer) { input in
                    currentDate = input
                }
            
            TextField("Enter Countdown Time in Seconds", text: $input.value)
                .keyboardType(.decimalPad)
           
            Text("Original Countdown Time : \(timeRemaining)")
                .onReceive(timer) { _ in
                    if timeRemaining > 0 {
                        timeRemaining -= 1
                    }
                }
            
            Text("User Countdown Time : \(input.value)")
                .onReceive(timer) { _ in
                    
                    let myString =  input.value
                    if let myNumber = NumberFormatter().number(from: myString) {
                        var myInt = myNumber.intValue
                        if myInt > 0 {
                            myInt -= 1
                            input.value = "\(myInt)"
                        }
                      } else {
                        // what ever error code you need to write
                      }
                    
                    
            
                }
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-a-timer-with-swiftui", title: "Timer with SwiftUI")
        }
       
        .padding()    }
}

struct Example_7_6_Previews: PreviewProvider {
    static var previews: some View {
        Example_7_6()
    }
}
