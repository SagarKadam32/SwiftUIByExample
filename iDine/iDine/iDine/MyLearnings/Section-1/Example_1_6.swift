//
//  Example_1_6.swift
//  iDine
//
//  Created by Sagar Kadam on 08/09/22.
//

import SwiftUI

struct Example_1_6: View {
    var body: some View {
        NavigationView {
            VStack(spacing:10) {
                Text(Date()...Date().addingTimeInterval(600))
                Text(Date().addingTimeInterval(600), style: .date)
                Text(Date().addingTimeInterval(600), style: .time)
                Text(Date().addingTimeInterval(600), style: .relative)
                Text(Date().addingTimeInterval(600), style: .timer)
            }
            .navigationTitle("6. How to format dates inside text views")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Example_1_6_Previews: PreviewProvider {
    static var previews: some View {
        Example_1_6()
    }
}
