//
//  Example_4_3.swift
//  iDine
//
//  Created by Sagar Kadam on 12/09/22.
//

import SwiftUI

struct EmailList: Identifiable {
    var id: String
    var isSubscribed = false
}

struct Example_4_3: View {
    @State private var showGreetings = true
    @State var lists = [
        EmailList(id: "Monthly Updates", isSubscribed: true),
        EmailList(id: "News Flashes", isSubscribed: true),
        EmailList(id: "Special Offers", isSubscribed: true)

    ]
    
    var body: some View {
        VStack {
            Toggle("Show welcome message", isOn: $showGreetings)
                .toggleStyle(SwitchToggleStyle(tint: .red))
            
            if showGreetings {
                Text("Hello World!")
            }
            
            Toggle("Filter", isOn: $showGreetings)
                .toggleStyle(.button)
                .tint(.mint)
            
            Form {
                Section {
                    ForEach($lists) { $list in
                        Toggle(list.id, isOn: $list.isSubscribed)
                    }
                }
                /*
                Section {
                    Toggle(isOn: $lists.map) {
                        Text("Subscribe to all")
                    }
                }
                 */
                
            }
        }
        .padding()

    }
}

struct Example_4_3_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_3()
    }
}
