//
//  Example_5_4.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

struct Example_5_4: View {
    @State private var name = "Taylor"
    @FocusState var isInputActive: Bool
    
    var body: some View {
        VStack {
            
            TextField("Enter your name", text: $name)
                .textFieldStyle(.roundedBorder)
                .focused($isInputActive)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            print("Clicked")
                            isInputActive = false
                        }
                    }
                }
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-a-toolbar-to-the-keyboard", title: "Toolbar to the keyboard")
        }
        .padding()


    }
}

struct Example_5_4_Previews: PreviewProvider {
    static var previews: some View {
        Example_5_4()
    }
}
