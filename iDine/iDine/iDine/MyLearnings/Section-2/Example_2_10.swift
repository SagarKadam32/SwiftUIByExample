//
//  Example_2_10.swift
//  iDine
//
//  Created by Sagar Kadam on 10/09/22.
//

import SwiftUI

struct Example_2_10: View {
    var body: some View {
        VStack {
            NavigationView {
                List(0..<100) { i in
                    Text("Row \(i)")
                }
                .navigationTitle("Select a row")
                /*
                .safeAreaInset(edge: .bottom) {
                    Text("Outside Safe Area")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.indigo)
                } */
                
                .safeAreaInset(edge: .bottom, alignment: .trailing) {
                    Button {
                        print("Show help")
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .symbolRenderingMode(.multicolor)
                            .padding(.trailing)
                    }
                    .accessibilityLabel("Show help")
                    
                }
            }
            
            
        }

    }
}

struct Example_2_10_Previews: PreviewProvider {
    static var previews: some View {
        Example_2_10()
    }
}
