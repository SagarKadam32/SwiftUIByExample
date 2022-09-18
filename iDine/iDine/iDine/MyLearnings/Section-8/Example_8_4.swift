//
//  Example_8_4.swift
//  iDine
//
//  Created by Sagar Kadam on 18/09/22.
//

import SwiftUI

struct Example_8_4: View {
    @State private var users = ["Amar", "Akbar", "Anthony"]
    var body: some View {
        VStack {

            NavigationView {
                List {
                    ForEach(users, id: \.self) { user in
                        Text(user)
                    }
                    .onMove(perform: move)
                }
                .toolbar {
                    EditButton()
                }
            }
      
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-let-users-move-rows-in-a-list", title: "Move Rows in a List")
        }
       
        .padding()
    }
    
    func move(from source: IndexSet, to destination: Int) {
        users.move(fromOffsets: source, toOffset: destination)
    }
}

struct Example_8_4_Previews: PreviewProvider {
    static var previews: some View {
        Example_8_4()
    }
}
