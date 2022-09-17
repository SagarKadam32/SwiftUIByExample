//
//  Example_7_5.swift
//  iDine
//
//  Created by Sagar Kadam on 17/09/22.
//

import SwiftUI

struct Example_7_5: View {
    @State private var username = ""
    @State private var firstToggle = false
    @State private var secondToggle = false
    

    var body: some View {
        let binding = Binding(get: {self.username}, set: {self.username = $0})
        
        let firstBinding = Binding(
            get: {self.firstToggle},
            set: {self.firstToggle = $0
                if $0 == true {
                    self.secondToggle = false
                }
            })
        
        let secondBinding = Binding(
            get: {self.secondToggle},
            set: {
                self.secondToggle = $0
                
                if $0 == true {
                    self.firstToggle = false
                }
            }
        )
        
        return VStack {

            TextField("Enter your name", text: binding)
            Toggle(isOn: firstBinding) {
                Text("First Toggle")
            }
            Toggle(isOn: secondBinding) {
                Text("Second Toggle")
            }
          
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-custom-bindings", title: "Custom Bindings")
        }
       
        .padding()
    }
}

struct Example_7_5_Previews: PreviewProvider {
    static var previews: some View {
        Example_7_5()
    }
}
