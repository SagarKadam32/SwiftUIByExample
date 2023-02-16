//
//  Basics_32_Darkmode_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 16/02/23.
//

import SwiftUI

struct Basics_32_Darkmode_Bootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    Text("This color is RED")
                        .foregroundColor(.red)
                    Text("This color is globally adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                
                }
            }
        }


    }
}

struct Basics_32_Darkmode_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Basics_32_Darkmode_Bootcamp()
                .preferredColorScheme(.light)
            Basics_32_Darkmode_Bootcamp()
                .preferredColorScheme(.dark)
        }
    
    }
}
