//
//  Example_8_3.swift
//  iDine
//
//  Created by Sagar Kadam on 18/09/22.
//

import SwiftUI

struct Example_8_3: View {
    @State private var users = ["Sagar", "Rohit", "Virendra"]
    var body: some View {
        VStack {

            NavigationView {
                List{
                    ForEach(users, id: \.self) { user in
                        Text(user)
                    }
                    .onDelete(perform: delete)
                }
                .navigationTitle("Users")

            }
         
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-let-users-delete-rows-from-a-list", title: "Delete Rows from a list")
        }
       
        .padding()
    }
    
    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}

struct Example_8_3_Previews: PreviewProvider {
    static var previews: some View {
        Example_8_3()
    }
}
