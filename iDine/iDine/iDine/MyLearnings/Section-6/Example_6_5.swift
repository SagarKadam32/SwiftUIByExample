//
//  Example_6_5.swift
//  iDine
//
//  Created by Sagar Kadam on 16/09/22.
//

import SwiftUI

struct Example_6_5: View {
    @State private var message = "Long press then drag"
    var body: some View {

        VStack {
            
            let longPress = LongPressGesture()
                .onEnded { _ in
                    message = "Now drag me"
                }
            
            let drag = DragGesture()
                .onEnded { _ in
                    message = "Sucess!"
                }
            
            let combinedGesture = longPress.sequenced(before: drag)
            
            Text(message)
                .gesture(combinedGesture)
            
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-gesture-chains-using-sequencedbefore", title: "Sequenced Gesture()")
        }
        .padding()
    }
}

struct Example_6_5_Previews: PreviewProvider {
    static var previews: some View {
        Example_6_5()
    }
}
