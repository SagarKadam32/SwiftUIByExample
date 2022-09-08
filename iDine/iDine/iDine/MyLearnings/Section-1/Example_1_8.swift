//
//  Example_1_8.swift
//  iDine
//
//  Created by Sagar Kadam on 08/09/22.
//

import SwiftUI

struct Example_1_8: View {
    var body: some View {
        NavigationView {
            VStack(spacing:10) {
                
                Label("Your Account", systemImage: "folder.circle")
                
                Label("Welcome to the App", image: "star")
                
                Label("Your account", systemImage: "person.crop.circle")
                    .font(.title)
                
                VStack {
                    Label("Text Only",systemImage: "heart")
                        .font(.title)
                        .labelStyle(.titleOnly)
                    
                    Label("Icon Only", systemImage: "star")
                        .font(.title)
                        .labelStyle(.iconOnly)
                    
                    Label("Both", systemImage: "paperplane")
                        .font(.title)
                        .labelStyle(.titleAndIcon)
                }
                
                Label {
                    Text("Sagar Kadam")
                        .foregroundColor(.primary)
                        .font(.largeTitle)
                        .padding()
                        .background(.gray.opacity(0.2))
                        .clipShape(Capsule())
                } icon: {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.blue)
                        .frame(width: 64, height: 64)
                }
       
                Spacer()

            }
            .navigationTitle("8. How to show text and an icon side by side using Label")
            .navigationBarTitleDisplayMode(.inline)
        }    }
}

struct Example_1_8_Previews: PreviewProvider {
    static var previews: some View {
        Example_1_8()
    }
}
