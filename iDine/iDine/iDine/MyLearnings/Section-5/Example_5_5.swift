//
//  Example_5_5.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

struct Message: Decodable, Identifiable {
    let id: Int
    let from: String
    let text: String
}

struct Example_5_5: View {
    @State private var messages = [Message]()
    var body: some View {

            VStack {
                NavigationView {
                    List(messages) { message in
                        VStack(alignment: .leading) {
                            Text(message.from)
                                .font(.headline)
                            Text(message.text)
                        }
                    }
                    .navigationTitle("Inbox")
                }

                
                MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-run-an-asynchronous-task-when-a-view-is-shown", title: "Asynchronous Task")
            }
            .task {
                do {
                    let url = URL(string: "https://www.hackingwithswift.com/samples/messages.json")
                    let (data, _) = try await URLSession.shared.data(from: url!)
                    messages = try JSONDecoder().decode([Message].self, from: data)
                    
                } catch {
                    
                }
            }
            .padding()
    }
}

struct Example_5_5_Previews: PreviewProvider {
    static var previews: some View {
        Example_5_5()
    }
}
