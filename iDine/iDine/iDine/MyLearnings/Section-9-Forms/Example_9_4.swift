//
//  Example_9_4.swift
//  iDine
//
//  Created by Sagar Kadam on 18/09/22.
//

import SwiftUI

struct Example_9_4: View {
    @State private var aggreedToTerms = false
    
    var body: some View {
        Form {
            
            Section {
                Toggle("Agree to terms and conditions", isOn: $aggreedToTerms)
            }
            
            Section {
                Button("Continue") {
                    print("Thank you!")
                }
                .disabled(aggreedToTerms == false)
            }
            
            Section {
                MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/enabling-and-disabling-elements-in-forms", title: "Enabling and disabling elements in forms")
            }
        }
    }
}

struct Example_9_4_Previews: PreviewProvider {
    static var previews: some View {
        Example_9_4()
    }
}
