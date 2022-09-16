//
//  Example_6_8.swift
//  iDine
//
//  Created by Sagar Kadam on 16/09/22.
//

import SwiftUI

struct Example_6_8: View {
    var body: some View {
        VStack {
            ZStack {
                Button("Tap Me") {
                    print("Button was tapped")
                }
                .frame(width: 100, height: 100)
                .background(.gray)
                
                Rectangle()
                    .fill(.red.opacity(0.2))
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .allowsHitTesting(false)
      
            }

            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-disable-taps-for-a-view-using-allowshittesting", title: "AllowsHitTesting")
        }
       
        .padding()
    }
}

struct Example_6_8_Previews: PreviewProvider {
    static var previews: some View {
        Example_6_8()
    }
}
