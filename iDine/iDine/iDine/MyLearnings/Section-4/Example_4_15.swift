//
//  Example_4_15.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

struct Example_4_15: View {
    @Environment(\.openURL) var openURL
    
    var body: some View {
        VStack(spacing: 20) {
            
            Link("Learn SwiftUI", destination: URL(string: "https://www.hackingwithswift.com/quick-start/swiftui")!)
            
            Link("Visit Apple", destination: URL(string: "https://www.apple.com")!)
                .font(.title)
                .foregroundColor(.red)
            
            Link(destination: URL(string: "https://www.apple.com")!) {
                Image(systemName: "link.circle.fill")
                    .font(.largeTitle)
            }
            
            Button("Visit Apple") {
                openURL(URL(string: "https://www.apple.com")!)
            }
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-open-web-links-in-safari", title: "Web links in Safari")
        }
        .padding()

    }
}

struct Example_4_15_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_15()
    }
}
