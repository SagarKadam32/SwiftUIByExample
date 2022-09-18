//
//  Example_9_2.swift
//  iDine
//
//  Created by Sagar Kadam on 18/09/22.
//

import SwiftUI

struct Example_9_2: View {
    @State private var enableLogging = false
    @State private var selectedColor = "Red"
    @State private var colors = ["Red", "Green", "Blue"]
    
    var body: some View {
        Form {
            
            Section(footer: Text("Note: Enabling loggin may slow down the app")) {
                
                Picker("Select a color", selection: $selectedColor) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
                
                Toggle("Enable Logging", isOn: $enableLogging)
            }
            
            Section {
                Button("Save Changes") {
                    
                }
            }
            
            Section {
                MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/breaking-forms-into-sections", title: "Forms into sections")
            }

        }
    }
}

struct Example_9_2_Previews: PreviewProvider {
    static var previews: some View {
        Example_9_2()
    }
}
