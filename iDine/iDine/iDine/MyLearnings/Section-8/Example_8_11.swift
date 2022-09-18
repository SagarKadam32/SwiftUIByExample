//
//  Example_8_11.swift
//  iDine
//
//  Created by Sagar Kadam on 18/09/22.
//

import SwiftUI




struct Example_8_11_2 : View {
    var friends: [String]
    var body: some View {
        List {
            ForEach(friends, id: \.self) { friend in
                Text(friend)
                    .swipeActions(allowsFullSwipe: false) {
                        Button {
                            print("Muting conversation")
                        } label: {
                            Label("Mute", systemImage: "bell.shash.fill")
                        }
                        .tint(.indigo)
                        
                        Button(role: .destructive) {
                            print("Deleting conversation")
                        } label: {
                            Label("Delete",systemImage: "trash.fill")
                        }
                        
                    }
            }
        }
    }
}


struct Example_8_11_1 : View {
    var body: some View {
        List {
            Text("Pepporoni Pizza")
                .swipeActions {
                    Button("Order") {
                        print("Awesome")
                    }
                    .tint(.green)
                }
            
            Text("Pepporoni with pineapple")
                .swipeActions {
                    Button("Burn", role: .destructive) {
                        print("Right on!")
                    }
                }
        }
    }
}

struct Example_8_11: View {
    let friends = ["Amar", "Akbar", "Anthony", "Rahul","Alwyn","Bob"]
    @State private var total = 0
    
    var body: some View {
        VStack(spacing:20) {

            NavigationLink(destination: Example_8_11_1()) {
                Text("Regular Swipe")
            }
            
            NavigationLink(destination: Example_8_11_2(friends: friends)) {
                Text("Swipe with full swipe disabled")
            }
            
            NavigationView {
                List {
                    ForEach(1..<100) { i in
                        Text("\(i)")
                            .swipeActions(edge: .leading) {
                                Button {
                                    total += 1
                                } label: {
                                    Label("Add \(i)", systemImage: "plus.circle")
                                }
                                .tint(.indigo)
                            }
                            .swipeActions(edge: .trailing) {
                                Button {
                                    total -= 1
                                } label: {
                                    Label("Subtract \(i)", systemImage: "minus.circle")
                                }
                            }
                    }
                }
                .navigationTitle("Total: \(total)")
            }
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/working-with-lists", title: "Working with lists")
        }
       
        .padding()
    }
}

struct Example_8_11_Previews: PreviewProvider {
    static var previews: some View {
        Example_8_11()
    }
}
