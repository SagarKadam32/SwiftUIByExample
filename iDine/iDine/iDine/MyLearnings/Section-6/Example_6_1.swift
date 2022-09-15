//
//  Example_6_1.swift
//  iDine
//
//  Created by Sagar Kadam on 15/09/22.
//

import SwiftUI

struct Example_6_1: View {
    @State private var scale1 = 1.0
    @State private var scale2 = 1.0
    @State private var dragCompleted = false
    @State private var dragOffset = CGSize.zero
    
    var body: some View {
        ScrollView {
            VStack {
                Button("Reset") {
                    scale1 = 1.0
                    scale2 = 1.0
                    dragCompleted = false
                }
                Image("full-english")
                    .scaleEffect(scale1)
                    .gesture(
                        TapGesture()
                            .onEnded { _ in
                                scale1 -= 0.1
                            }
                    )
                
                Image("pepperoni-pizza")
                    .scaleEffect(scale2)
                    .gesture(
                        LongPressGesture(minimumDuration: 1)
                            .onEnded { _ in
                                scale2 /= 2
                                
                            }
                    )
                VStack {
                    Image("strawberry-surprise")
                        .offset(dragOffset)
                        .gesture(
                            DragGesture()
                                .onChanged { gesture in
                                    dragOffset = gesture.translation
                                    
                                }
                                .onEnded { gesture in
                                    dragCompleted = true
                                    dragOffset = .zero
                                }
                        )
                    if dragCompleted {
                        Text("Drag Completed")
                    }else{
                        Text("Please Re-Drag")
                    }
                }

                
                MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-a-gesture-recognizer-to-a-view", title: "Gesture Recognizer to a view")
            }
            .padding()
            
        }
    }
}

struct Example_6_1_Previews: PreviewProvider {
    static var previews: some View {
        Example_6_1()
    }
}
