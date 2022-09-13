//
//  Example_4_17.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

struct Example_4_17: View {
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Form {
                TextField("Username", text: $userName)
                SecureField("Password", text: $password)

            }
            .onSubmit {
                guard userName.isEmpty == false && password.isEmpty == false else { return }
                    print("Authenticating..")
                }
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-take-action-when-the-user-submits-a-textfield", title: "Submit Action")
        }
        .padding()

    }
}

struct Example_4_17_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_17()
    }
}
