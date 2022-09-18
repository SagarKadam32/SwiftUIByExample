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
                
                List {
                    ForEach(1..<100) { index in
                        Text("Row \(index)")
                            .listRowSeparator(.hidden)
                    }
                }
                
                List {
                    ForEach(1..<100) { index in
                        Text("Row \(index)")
                            .listRowSeparatorTint(.red)
                    }
                }
             
                
                MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-implicit-stacking", title: "Implicit stacking")
                Divider()
                MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-adjust-list-row-separator-visibility-and-color", title: "List row separator")
            }
        
           
            .padding()


    }
}

struct Example_8_9_Previews: PreviewProvider {
    static var previews: some View {
        Example_8_9()
    }
}
