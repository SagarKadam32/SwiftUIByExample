//
//  Example_6_6.swift
//  iDine
//
//  Created by Sagar Kadam on 16/09/22.
//

import SwiftUI

struct Example_6_6: View {
    @State private var overText = false
    
    var body: some View {
        VStack {
            
            Text("Color will change post hover me!")
                .foregroundColor(overText ? .green : .red)
                .onHover { over in
                    overText = over
                }
            
            Text("Tap me!")
                .font(.largeTitle)
                .hoverEffect(.lift)
                .onTapGesture {
                    print("Text tapped..")
                }
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-detect-the-user-hovering-over-a-view", title: "Hovering over a View")
        }
        .padding()

    }
}

struct Example_6_6_Previews: PreviewProvider {
    static var previews: some View {
        Example_6_6()
    }
}
