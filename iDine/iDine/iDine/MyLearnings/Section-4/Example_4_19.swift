//
//  Example_4_19.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

struct Example_4_19: View {
    var body: some View {
        VStack {
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-let-the-user-select-multiple-dates", title: "Multiple Dates Selection")
        }
        .padding()

    }
}

struct Example_4_19_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_19()
    }
}
