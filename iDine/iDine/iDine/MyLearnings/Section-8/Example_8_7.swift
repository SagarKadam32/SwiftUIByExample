//
//  Example_8_7.swift
//  iDine
//
//  Created by Sagar Kadam on 18/09/22.
//

import SwiftUI

struct Example_8_7: View {
    var body: some View {
        VStack {
            ScrollViewReader { proxy in
                
                VStack {
                    Button("Jump to #50") {
                        proxy.scrollTo(50, anchor: .top)
                    }
                    
                    
                    List(0..<100, id: \.self) { i in
                        Text("Example \(i)")
                            .id(i)
                    }
                }
                
            }

            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-scroll-to-a-specific-row-in-a-list", title: "Scroll to a specific row in a list")
        }
       
        .padding()
    }
}

struct Example_8_7_Previews: PreviewProvider {
    static var previews: some View {
        Example_8_7()
    }
}
