//
//  Example_4_10.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

struct Example_4_10: View {
    @State private var bgColor = Color.blue
    
    var body: some View {
        VStack {
            ColorPicker("Set the background color", selection: $bgColor, supportsOpacity: false)
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-let-users-select-a-color-with-colorpicker", title: "Color Picker")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor)
        .foregroundColor(.white)
        .padding()

    }
    
}

struct Example_4_10_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_10()
    }
}
