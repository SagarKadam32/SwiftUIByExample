//
//  Example_8_9.swift
//  iDine
//
//  Created by Sagar Kadam on 18/09/22.
//

import SwiftUI

struct User: Identifiable {
    let id = UUID()
    let userName = "Anonymous"
}

struct Example_8_9: View {
    let users = [User(),User(),User(),User(),User()]
    var body: some View {
        VStack {

            List(users) { user in
                HStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text(user.userName)
                }
            }
         
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-implicit-stacking", title: "Implicit stacking")
        }
       
        .padding()
    }
}

struct Example_8_9_Previews: PreviewProvider {
    static var previews: some View {
        Example_8_9()
    }
}
