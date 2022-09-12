//
//  Example_4_6.swift
//  iDine
//
//  Created by Sagar Kadam on 12/09/22.
//

import SwiftUI

struct Example_4_6: View {
    @State private var favoriteColor = 0
    @State private var myFavouriteColor = "Blue"
    var colors = ["Red", "Blue", "Green"]
    var body: some View {
        VStack(spacing: 20) {
            Picker("What is your favourite color?",selection: $favoriteColor) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }
            .pickerStyle(.segmented)
            
            Text("Value : \(favoriteColor)")
            
            VStack {
                Picker("What is your favorite color?",selection: $myFavouriteColor) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
                
                Text("My Color Value = \(myFavouriteColor)")
            }
        }
        .padding()

    }
}

struct Example_4_6_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_6()
    }
}
