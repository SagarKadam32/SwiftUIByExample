//
//  Example_9_5.swift
//  iDine
//
//  Created by Sagar Kadam on 18/09/22.
//

import SwiftUI

struct Example_9_5: View {
    @State private var showingAdvancedOptions = false
    @State private var enableLogging = false
    
    var body: some View {
        Form {
            
            Section {
                Toggle("Show advanced options", isOn: $showingAdvancedOptions.animation())
                
                if showingAdvancedOptions {
                    Toggle("Enable Logging", isOn: $enableLogging)
                }
            }
            Section {
                MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/showing-and-hiding-form-rows", title: "Showing and hiding form rows")
            }
        }
    }
}

struct Example_9_5_Previews: PreviewProvider {
    static var previews: some View {
        Example_9_5()
    }
}
