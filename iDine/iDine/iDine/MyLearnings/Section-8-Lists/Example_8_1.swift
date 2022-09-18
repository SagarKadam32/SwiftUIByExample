//
//  Example_8_1.swift
//  iDine
//
//  Created by Sagar Kadam on 17/09/22.
//

import SwiftUI


struct Pizzaria: View {
    let name: String
    
    var body: some View {
        Text("Resataurant: \(name)")
    }
}

struct Example_8_1: View {
    var body: some View {
        VStack {

            List {
                Pizzaria(name: "Joe's Original")
                Pizzaria(name: "The Reas Joe's Original")
                Pizzaria(name: "Original Joe's")
            }
         
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/working-with-lists", title: "Working with lists")
        }
       
        .padding()
    }
}

struct Example_8_1_Previews: PreviewProvider {
    static var previews: some View {
        Example_8_1()
    }
}
