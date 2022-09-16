//
//  Example_6_Main.swift
//  iDine
//
//  Created by Sagar Kadam on 15/09/22.
//

import SwiftUI

struct Example_6_Main: View {
    var body: some View {

        Group {
            NavigationLink(destination: Example_6_1()) {
                Text("1. How to add a gesture recognizer to a view")
            }
            
            NavigationLink(destination: Example_6_2()) {
                Text("2. How to read tap and double-tap gestures")
            }
            
            NavigationLink(destination: Example_6_3()) {
                Text("3. How to force one gesture to recognize before another using highPriorityGesture()")
            }
            
            NavigationLink(destination: Example_6_4()) {
                Text("4. How to make two gestures recognize at the same time using simultaneousGesture()")
            }
            
            NavigationLink(destination: Example_6_5()) {
                Text("5. How to create gesture chains using sequenced(before:)")
            }
            
            NavigationLink(destination: Example_6_6()) {
                Text("6. How to detect the user hovering over a view")
            }
            
            NavigationLink(destination: Example_6_7()) {
                Text("7. How to control the tappable area of a view using contentShape()")
            }
            
            NavigationLink(destination: Example_6_8()) {
                Text("8. How to disable taps for a view using allowsHitTesting()")
            }
        }

    }
}

struct Example_6_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_6_Main()
    }
}
