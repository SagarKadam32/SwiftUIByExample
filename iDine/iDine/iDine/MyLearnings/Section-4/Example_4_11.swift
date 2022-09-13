//
//  Example_4_11.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

struct Example_4_11: View {
    @State private var downloadAmount = 0.0
    let timer = Timer.publish(every: 0.1, on: .main , in: .common).autoconnect()
    
    var body: some View {
        VStack{
            
            ProgressView("Downloading..", value: downloadAmount, total: 100)
                .onReceive(timer) { _ in
                    if downloadAmount < 100 {
                        downloadAmount += 2
                    }
                }
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-show-progress-on-a-task-using-progressview", title: "ProgressView")
        }
        .padding()
        
    }
}

struct Example_4_11_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_11()
    }
}
