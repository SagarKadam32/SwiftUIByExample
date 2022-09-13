//
//  Example_4_8.swift
//  iDine
//
//  Created by Sagar Kadam on 13/09/22.
//

import SwiftUI

struct Example_4_8: View {
    @State private var selectedNumber = 0
    
    var body: some View {
        VStack {
            
            Picker("Select a number", selection: $selectedNumber) {
                ForEach(0..<10) {
                    Text("\($0)")
                }
            }
            
            Picker("Select a number", selection: $selectedNumber) {
                ForEach(0..<10) {
                    Text("\($0)")
                }
            }
            .labelsHidden()
            
            
            Picker(selection: $selectedNumber, label: EmptyView()) {
                  ForEach(0..<10) {
                      Text("\($0)")
                  }
              }
            
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-hide-the-label-of-a-picker-stepper-toggle-and-more-using-labelshidden", title: "Hide Labels")
        }
        .padding()

    }
}

struct Example_4_8_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_8()
    }
}
