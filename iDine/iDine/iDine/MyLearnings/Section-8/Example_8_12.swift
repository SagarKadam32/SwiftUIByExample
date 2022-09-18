//
//  Example_8_12.swift
//  iDine
//
//  Created by Sagar Kadam on 18/09/22.
//

import SwiftUI



struct Example_8_12: View {
    @State private var users = [
        User(userName: "Amar"),
        User(userName: "Akbar"),
        User(userName: "Anthony")
    ]
    
    var body: some View {
        VStack {
            List($users) { $user in
                HStack {
                    Text(user.userName)
                    Spacer()
                    Toggle("User has been contacted", isOn: $user.isContacted)
                        .labelsHidden()
                }
            }
         
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/working-with-lists", title: "Working with lists")
        }
       
        .padding()
    }
}

struct Example_8_12_Previews: PreviewProvider {
    static var previews: some View {
        Example_8_12()
    }
}
