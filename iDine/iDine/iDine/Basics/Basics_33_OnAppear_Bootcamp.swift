//
//  Basics_33_OnAppear_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 16/02/23.
//

import SwiftUI

struct Basics_33_OnAppear_Bootcamp: View {
    
    @State var myText: String = "Initial Text"
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
            }
            .onAppear(perform: {
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                    myText = "This is the new text!"

                })
            })
            .navigationTitle("On Appear Bootcamp")
        }
    }
}

struct Basics_33_OnAppear_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_33_OnAppear_Bootcamp()
    }
}
