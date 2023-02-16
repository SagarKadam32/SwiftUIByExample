//
//  Basics_33_OnAppear_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 16/02/23.
//

import SwiftUI

struct Basics_33_OnAppear_Bootcamp: View {
    
    @State var myText: String = "Initial Text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear() {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                    myText = "This is the new text!"

                })
            })
            .onDisappear(perform: {
                // Clean up code
            })
            .navigationTitle("On Appear Bootcamp: \(count)")
        }
    }
}

struct Basics_33_OnAppear_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_33_OnAppear_Bootcamp()
    }
}
