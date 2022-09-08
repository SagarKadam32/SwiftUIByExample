//
//  Example_1_1.swift
//  iDine
//
//  Created by Sagar Kadam on 08/09/22.
//

import SwiftUI

struct Example_1_1: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.")
                    .lineLimit(3)
                    .frame(width: 200)
                
                Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.")
                    .lineLimit(1)
                    .truncationMode(.head)
                
                Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.")
                    .lineLimit(1)
                    .truncationMode(.middle)
                
                Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.")
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                Spacer()
            }
            .padding()

        }
        .navigationTitle("1. How to create static labels with a Text view")
        .navigationBarTitleDisplayMode(.inline)

        
    }
}

struct Example_1_1_Previews: PreviewProvider {
    static var previews: some View {
        Example_1_1()
    }
}
