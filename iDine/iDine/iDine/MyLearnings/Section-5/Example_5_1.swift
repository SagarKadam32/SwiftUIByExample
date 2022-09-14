//
//  Example_5_1.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

struct Example_5_1: View {
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        VStack {
            Text("Example Text")
                .onChange(of: scenePhase) { newPhase in
                    if newPhase == .inactive {
                        print("Inactive")
                    } else if newPhase == .active {
                        print("Active")
                    } else if newPhase == .background {
                        print("Background")
                    }
                    
                }

            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-detect-when-your-app-moves-to-the-background-or-foreground-with-scenephase", title: "Background/Foreground - scene Phase")
            
        }
    }
}

struct Example_5_1_Previews: PreviewProvider {
    static var previews: some View {
        Example_5_1()
    }
}
