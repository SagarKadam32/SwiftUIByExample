//
//  Example_6_2.swift
//  iDine
//
//  Created by Sagar Kadam on 16/09/22.
//

import SwiftUI

struct Example_6_2: View {
    var body: some View {
        VStack {
            
            Text("Tap Me")
                .onTapGesture {
                    print("Tapped!!!")
                }
            
            Image("tower-burger")
                .onTapGesture(count: 2) {
                    print("Double tapped!!!")
                }
            
            
            Image("tower-burger")
                .onTapGesture(count: 3) {
                    print("Tripple tapped!!!")
                }
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-read-tap-and-double-tap-gestures", title: "Tap and Double-Tap Gestures")
        }
        .padding()

    }
}

struct Example_6_2_Previews: PreviewProvider {
    static var previews: some View {
        Example_6_2()
    }
}
