//
//  TimerBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 07/10/22.
//

import SwiftUI

struct TimerBootcamp: View {
    
    let timer = Timer.publish(every: 1.0 , on: .main, in: .common).autoconnect()
    
    /** Current Date Time */
    @State var currentDate: Date = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        formatter.dateStyle = .medium
        return formatter
    }
    
    var body: some View {
        ZStack {
            
            RadialGradient(gradient: Gradient(colors: [Color.green ,Color.blue]),
                           center: .center,
                           startRadius: 5,
                           endRadius: 500)
                            .ignoresSafeArea()
            ScrollView {
                VStack(spacing:0){
                    Text("Currrent Date Time ")
                        .foregroundColor(.white)
                    Text(dateFormatter.string(from: currentDate))
                        .font(.system(size: 100, weight: .semibold, design: .rounded))
                        .lineLimit(1)
                        .minimumScaleFactor(0.1)
                        .padding()
                }

  
            }
 
        }
        .onReceive(timer, perform: { value in
            currentDate = value
        })
        
    }
}

struct TimerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TimerBootcamp()
    }
}
