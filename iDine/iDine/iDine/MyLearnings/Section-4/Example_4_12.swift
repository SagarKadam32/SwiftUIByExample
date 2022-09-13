//
//  Example_4_12.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

struct Example_4_12: View {
    var body: some View {
        VStack {
            ProgressView("Downloading..")
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-show-indeterminate-progress-using-progressview", title: "ProgressView")
        }
        .padding()

    }
}

struct Example_4_12_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_12()
    }
}
