//
//  Example_7_4.swift
//  iDine
//
//  Created by Sagar Kadam on 17/09/22.
//

import SwiftUI

class UserAuthentication: ObservableObject {
    var userName = "Sagar" {
        willSet {
            objectWillChange.send()
        }
    }
}

struct Example_7_4: View {
    @StateObject var user = UserAuthentication()
    
    var body: some View {
        VStack() {

            TextField("Enter your name", text: $user.userName)
            Text("Your username is: \(user.userName)")
            
            MoreDetailsView(linkURL: "hhttps://www.hackingwithswift.com/quick-start/swiftui/how-to-send-state-updates-manually-using-objectwillchange", title: "State updates manually using objectWillChange")
        }
       
        .padding()
    }
}

struct Example_7_4_Previews: PreviewProvider {
    static var previews: some View {
        Example_7_4()
    }
}
