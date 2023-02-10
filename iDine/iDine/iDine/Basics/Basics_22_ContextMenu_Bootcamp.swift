//
//  Basics_22_ContextMenu_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 10/02/23.
//

import SwiftUI

struct Basics_22_ContextMenu_Bootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10.0) {
           Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Report Post")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                Text("Like Post")
                Image(systemName: "heart.fill")
            })
            
        })

    }
}

struct Basics_22_ContextMenu_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_22_ContextMenu_Bootcamp()
    }
}
