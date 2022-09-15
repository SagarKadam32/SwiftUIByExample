//
//  Example_6_3.swift
//  iDine
//
//  Created by Sagar Kadam on 16/09/22.
//

import SwiftUI

struct Example_6_3: View {
    var body: some View {
        VStack {
            
            Circle()
                .fill(.red)
                .frame(width: 200, height: 200)
                .onTapGesture {
                    print("Circle Tapped!")
                }
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-force-one-gesture-to-recognize-before-another-using-highprioritygesture", title: "highPriorityGesture()")
        }
        .highPriorityGesture(
            TapGesture()
                .onEnded { _ in
                    print("VStack Tapped!!")
                }
        )
        .padding()
    }
}

struct Example_6_3_Previews: PreviewProvider {
    static var previews: some View {
        Example_6_3()
    }
}
