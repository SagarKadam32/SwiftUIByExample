//
//  SubscriberBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 10/10/22.
//

import SwiftUI
import Combine

class SubscriberViewModel: ObservableObject {
    
    @Published var count: Int = 0
    var timer : AnyCancellable?
    
    init() {
        setUpTimer()
    }
    
    func setUpTimer() {
        timer = Timer
            .publish(every: 0.01, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                
                self?.count += 1
                
                if let count = self?.count, count >= 100 {
                    self?.timer?.cancel()
                }
            }
    }
    
}

struct SubscriberBootcamp: View {
    
    @StateObject var vm = SubscriberViewModel()
    
    var body: some View {
        VStack(spacing: 10) {
            Text("It's no secret that Publishers and Subscribers are the future of iOS development! Thanks to the Combine framework, we can implement custom solutions in our application to ensure that the data is always in sync across our application. This is a HUGE step forward for iOS development and mastering these tools can take your app to the next level. Note: this video builds upon the last 2 videos in the series. I would recommend that you watch those videos first! :)")
                .font(.headline)
                .fontWeight(.semibold)
            
            Text("\(vm.count)")
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            
            
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=Q-1EDHXUunI&list=PLwvDm4VfkdpiagxAXCT33Rkwnc5IVhTar", title: "Publishers and Subscribers in Combine")
            }
         }
        .padding()
    }
}

struct SubscriberBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubscriberBootcamp()
    }
}
