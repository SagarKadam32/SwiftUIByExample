//
//  Example_9_1.swift
//  iDine
//
//  Created by Sagar Kadam on 18/09/22.
//

import SwiftUI

struct Example_9_1: View {
    @State private var enableLogging = false
    @State private var selectedColor = "Red"
    @State private var colors = ["Red","Green","Blue"]
    
    var body: some View {
        Form {
            Picker("Select a color", selection: $selectedColor) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.segmented)
            
            Toggle("Enable Logging", isOn: $enableLogging)
            
            Button("Save Changes") {
                
            }
          
         
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/basic-form-design", title: "Basic form design")
        }
    }
}

struct Example_9_1_Previews: PreviewProvider {
    static var previews: some View {
        Example_9_1()
    }
}
