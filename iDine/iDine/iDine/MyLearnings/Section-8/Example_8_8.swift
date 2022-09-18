//
//  Example_8_8.swift
//  iDine
//
//  Created by Sagar Kadam on 18/09/22.
//

import SwiftUI



struct Example_8_8: View {
    @State private var selection: String?
    @State private var multiSelection = Set<String>()
    @State private var isMultiSelect = false
    
    let names1 = ["Amar", "Akbar", "Anthony", "Alice"]
    let names2 = ["Amar", "Akbar", "Anthony", "Alice"]

    
    var body: some View {
        NavigationView {
            VStack {
                /*
                Toggle("Is Multi-Select?", isOn: $isMultiSelect.animation())
                                   .toggleStyle(.switch)
                                   .tint(.mint) */
                
                Group{
                        Text("Single Selection")
                        List(names1, id: \.self, selection: $selection ) { name in
                            Text(name)
                        }
                 
                        Text("Mutli Selection")
                        List(names2, id: \.self, selection: $multiSelection) { name in
                            Text(name)
                        }
                
                }
                .navigationTitle("List Selection")
                .toolbar {
                    EditButton()
                }
                
                MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/working-with-lists", title: "Working with lists")
            }
            .padding()

        }
    }
    
}


struct Example_8_8_Previews: PreviewProvider {
    static var previews: some View {
        Example_8_8()
    }
}
