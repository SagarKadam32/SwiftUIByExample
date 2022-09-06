//
//  ContentView.swift
//  iDine
//
//  Created by Sagar Kadam on 06/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List {
                Text("Hello, World!")
                Text("Hellow, World!")
                Text("Hellow, World!")
            }
            .navigationTitle("Menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
