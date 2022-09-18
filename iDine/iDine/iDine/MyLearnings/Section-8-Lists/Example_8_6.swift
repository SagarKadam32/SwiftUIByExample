//
//  Example_8_6.swift
//  iDine
//
//  Created by Sagar Kadam on 18/09/22.
//

import SwiftUI

struct Bookmark: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    let items: [Bookmark]?
    
    static let apple = Bookmark(name: "Apple", icon: "1.circle", items: nil)
    static let bbc = Bookmark(name: "BBC", icon: "sqaure.and.pencil", items: nil)
    static let swift = Bookmark(name: "Swift", icon: "bolt.fill", items: nil)
    static let twitter = Bookmark(name: "Twitter", icon: "mic", items: nil)
    
    static let example1 = Bookmark(name: "Favourites", icon: "star", items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter])
    static let example2 = Bookmark(name: "Recent", icon: "timer", items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter])
    static let example3 = Bookmark(name: "Recommended", icon: "hand.thumbsup", items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter])
}


struct Example_8_6: View {
    let items: [Bookmark] = [.example1, .example2, .example3]
    var body: some View {
        VStack {

            List(items, children: \.items) { row in
                Image(systemName: row.icon)
                Text(row.name)
                
            }
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-expanding-lists", title: "Expanding Lists")
        }
       
        .padding()
    }
}

struct Example_8_6_Previews: PreviewProvider {
    static var previews: some View {
        Example_8_6()
    }
}
