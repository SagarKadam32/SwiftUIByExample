//
//  Example_7_1.swift
//  iDine
//
//  Created by Sagar Kadam on 17/09/22.
//

import SwiftUI

struct Example_7_1: View {
    @State private var tapCount = 0
    
    var body: some View {
        VStack {


            Button("Tap Count: \(tapCount)") {
                tapCount += 1
            }
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/whats-the-difference-between-observedobject-state-and-environmentobject", title: "@ObservedObject, @State, and @EnvironmentObject")
        }
       
        .padding()
    }
}

struct Example_7_1_Previews: PreviewProvider {
    static var previews: some View {
        Example_7_1()
    }
}
