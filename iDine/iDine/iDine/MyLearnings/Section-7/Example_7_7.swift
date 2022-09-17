//
//  Example_7_7.swift
//  iDine
//
//  Created by Sagar Kadam on 17/09/22.
//

import SwiftUI

extension Binding {
    func onChange(_ handler: @escaping (Value) -> Void) -> Binding<Value> {
        Binding(
            get: { self.wrappedValue },
            set: { newValue in
                self.wrappedValue = newValue
                handler(newValue)
            }
        )
    }
}

struct Example_7_7: View {
    @State private var name = ""
    
    var body: some View {
        VStack {

            TextField("Enter your name:", text: $name)
                .textFieldStyle(.roundedBorder)
                .onChange(of: name) { newValue in
                    print("Name changed to \(name)")
                }
            
            TextField("Enter your name:", text: $name.onChange(nameChanged))
                .textFieldStyle(.roundedBorder)
            
            Text("Name changed to \(name)")

            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-run-some-code-when-state-changes-using-onchange", title: "State changes using onChange()")
        }
       
        .padding()
    }
    
    func nameChanged(to Value: String) {
        print("Name changed to \(name)")
    }
}

struct Example_7_7_Previews: PreviewProvider {
    static var previews: some View {
        Example_7_7()
    }
}
