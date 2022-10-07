//
//  TimerBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 07/10/22.
//

import SwiftUI

struct TimerBootcamp: View {
    
    let timer = Timer.publish(every: 1.0 , on: .main, in: .common).autoconnect()
    
    @State var currentDate: Date = Date()
    
    var body: some View {
        ZStack {
            
            RadialGradient(gradient: Gradient(colors: [Color.green ,Color.blue]),
                           center: .center,
                           startRadius: 5,
                           endRadius: 500)
                            .ignoresSafeArea()
            
            Text(currentDate.description)
                .font(.system(size: 100, weight: .semibold, design: .rounded))
                .lineLimit(1)
                .minimumScaleFactor(0.1)
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
