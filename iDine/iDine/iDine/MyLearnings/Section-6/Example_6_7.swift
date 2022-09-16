//
//  Example_6_7.swift
//  iDine
//
//  Created by Sagar Kadam on 16/09/22.
//

import SwiftUI

struct Example_6_7: View {
    var body: some View {
        VStack {
            
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 50)
            
            Text("Sagar Kadam")
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-control-the-tappable-area-of-a-view-using-contentshape", title: "ContentShape")
        }
        .contentShape(Rectangle())
        .onTapGesture {
            print("Show details for user..")
        }
        .padding()
    }
}

struct Example_6_7_Previews: PreviewProvider {
    static var previews: some View {
        Example_6_7()
    }
}
