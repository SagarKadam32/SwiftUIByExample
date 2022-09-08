//
//  MyLearnings.swift
//  iDine
//
//  Created by Sagar Kadam on 08/09/22.
//

import SwiftUI

struct MyLearnings: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header:
                            Text("Working with static text")
                    .font(.headline)
                    .fontWeight(.black)
                            
                ) {
                    
                    NavigationLink(destination: Example_1_1()) {
                        Text("1. How to create static labels with a Text view")
                    }
                    
                    NavigationLink(destination: Example_1_1()) {
                        Text("2. How to create static labels with a Text view")
                    }
                }
            }
            .navigationTitle("My Learnings")
            
            
        }

    }
}

struct MyLearnings_Previews: PreviewProvider {
    static var previews: some View {
        MyLearnings()
    }
}
