//
//  Example_8_Main.swift
//  iDine
//
//  Created by Sagar Kadam on 17/09/22.
//

import SwiftUI

struct Example_8_Main: View {
    var body: some View {
        Group {
            NavigationLink(destination: Example_8_1()) {
                Text("1. How to create a list of static items")
            }
            
            NavigationLink(destination: Example_8_2()) {
                Text("2. How to create a list of dynamic items")
            }
            
            NavigationLink(destination: Example_8_3()) {
                Text("3. How to let users delete rows from a list")
            }
            
            NavigationLink(destination: Example_8_4()) {
                Text("4. How to let users move rows in a list")
            }
            
            NavigationLink(destination: Example_8_5()) {
                Text("5. How to add sections to a list")
            }
            
            NavigationLink(destination: Example_8_6()) {
                Text("6. How to create expanding lists")
            }
            
            NavigationLink(destination: Example_8_7()) {
                Text("7. How to scroll to a specific row in a list")
            }
            
            NavigationLink(destination: Example_8_8()) {
                Text("8. How to allow row selection in a list")
            }
            
            NavigationLink(destination: Example_8_9()) {
                Text("9. How to use implicit stacking")
            }
            NavigationLink(destination: Example_8_10()) {
                Text("10. How to enable pull to refresh")
            }
        }
        
        Group {
            NavigationLink(destination: Example_8_11()) {
                Text("11. How to add custom swipe action buttons to a List row")
            }
        }
    }
}

struct Example_8_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_8_Main()
    }
}
