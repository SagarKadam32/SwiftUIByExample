//
//  Example_5_Main.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

struct Example_5_Main: View {
    var body: some View {
        Group {
            NavigationLink(destination: Example_5_1()) {
                Text("1. How to detect when your app moves to the background or foreground with scenePhase")
            }
            
            NavigationLink(destination: Example_5_2()) {
                Text("2. How to respond to view lifecycle events: onAppear() and onDisappear()")
            }
            
            NavigationLink(destination: Example_5_2()) {
                Text("3. How to detect device rotation")
            }
            
            NavigationLink(destination: Example_5_3()) {
                Text("4. Detect device rotation")
            }
            
            NavigationLink(destination: Example_5_4()) {
                Text("5. How to add a toolbar to the keyboard")
            }
            
            NavigationLink(destination: Example_5_5()) {
                Text("6. How to run an asynchronous task when a view is shown")
            }
            NavigationLink(destination: Example_5_5_1()) {
                Text("6. How to run an asynchronous task when a view is shown")
            }
        }
    }
}

struct Example_5_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_5_Main()
    }
}
