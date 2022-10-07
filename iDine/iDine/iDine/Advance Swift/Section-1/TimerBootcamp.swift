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
    
    // CountDown
    @State var count: Int = 10
    @State var finishedText: String? = nil
    
    // Count Down to Date
    @State var timeRemaining: String = ""
    let futureDate: Date = Calendar.current.date(byAdding: .day, value: 1, to: Date()) ?? Date()
    
    func updateTimeRemaining() {
        let remaining = Calendar.current.dateComponents([.hour, .minute, .second], from: Date(), to: futureDate)
        let hour = remaining.hour ?? 0
        let minute = remaining.minute ?? 0
        let second = remaining.second ?? 0
        
        timeRemaining = "\(hour):\(minute):\(second)"
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
                
                VStack(spacing:0){
                    Text("CountDown Timer")
                        .foregroundColor(.white)
                    Text(finishedText ?? "\(count)")
                        .font(.system(size: 100, weight: .semibold, design: .rounded))
                        .lineLimit(1)
                        .minimumScaleFactor(0.1)
                        .padding()
                }
                
                VStack(spacing:0){
                    Text("Time Remaining")
                        .foregroundColor(.white)
                    Text(timeRemaining)
                        .font(.system(size: 100, weight: .semibold, design: .rounded))
                        .lineLimit(1)
                        .minimumScaleFactor(0.1)
                        .padding()
                }

  
            }
 
        }
        .onReceive(timer, perform: { value in
            currentDate = value
            
            if count <= 1 {
                finishedText = "WoW !!!"
            }else {
                count -= 1
            }
            
            updateTimeRemaining()
            
        })
        
    }
}

struct TimerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TimerBootcamp()
    }
}
