//
//  TimerBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 07/10/22.
//

import SwiftUI

struct TimerBootcamp: View {
    
    let timer = Timer.publish(every: 1.0 , on: .main, in: .common).autoconnect()
    let animationTimer = Timer.publish(every: 0.5 , on: .main, in: .common).autoconnect()
    let tabViewTimer = Timer.publish(every: 3.0 , on: .main, in: .common).autoconnect()

    
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
    
    // Animation Counter
    @State var animationCount: Int = 0
    
    // TabView
    @State var tabViewCount: Int = 0
    
    
    var body: some View {
        ZStack {
            
            RadialGradient(gradient: Gradient(colors: [Color.green ,Color.blue]),
                           center: .center,
                           startRadius: 5,
                           endRadius: 500)
                            .ignoresSafeArea()
            ScrollView {
                
                VStack(spacing:0){
                    Text("Implementing a Timer in SwiftUI is as simple as one line of code! In this video we will add a Timer to our View and then explore several different methods to create custom animations and features. We will use the .onReceive function to listen to the Timer (also known as 'subscribing'). This video will also serve as an introduction to Publishers and Subscribers, which we will expand on in the next video!")
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
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
                
                VStack(spacing:40){
                    Text("Animation Counter")
                        .foregroundColor(.white)
                    HStack(spacing: 2) {
                        Circle()
                            .offset(y: animationCount == 1 ? -20 : 0)
                        Circle()
                            .offset(y: animationCount == 2 ? -20 : 0)
                        Circle()
                            .offset(y: animationCount == 3 ? -20 : 0)
                        Circle()
                            .offset(y: animationCount == 4 ? -20 : 0)
                        Circle()
                            .offset(y: animationCount == 5 ? -20 : 0)
                    }
                    .frame(width: 150)
                    .foregroundColor(.white)
                }
                
                VStack(spacing:0){
                    Text("Tab View")
                        .foregroundColor(.white)
                    
                    TabView(selection: $tabViewCount,
                            content:  {
                            Rectangle()
                                .foregroundColor(.red)
                                .tag(1)
                            Rectangle()
                                .foregroundColor(.blue)
                                .tag(2)
                            Rectangle()
                                .foregroundColor(.green)
                                .tag(3)
                            Rectangle()
                                .foregroundColor(.orange)
                                .tag(4)
                            Rectangle()
                                .foregroundColor(.pink)
                                .tag(5)
                        
                    })
                    .frame(height: 200)
                    .tabViewStyle(PageTabViewStyle())
                }
                
                Section {
                    MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=ymXRX6ZB-J0&list=PLwvDm4VfkdpiagxAXCT33Rkwnc5IVhTar&index=25", title: "How to use Timer and onReceive in SwiftUI")
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
        .onReceive(animationTimer, perform:  { _ in
            
            withAnimation(.easeOut(duration: 0.5)) {
                animationCount = animationCount == 5 ? 0 : animationCount + 1
            }
        })
        .onReceive(tabViewTimer, perform:  { _ in
            
            withAnimation(.default) {
                tabViewCount = tabViewCount == 5 ? 1 : tabViewCount + 1
            }
            
        })
    }
}

struct TimerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TimerBootcamp()
    }
}
