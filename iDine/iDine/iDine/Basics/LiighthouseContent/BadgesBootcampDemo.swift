//
//  BadgesBootcampDemo.swift
//  iDine
//
//  Created by Sagar Kadam on 07/03/23.
//

import SwiftUI

struct BadgesBootcampDemo: View {
    var body: some View {
        /* List Example Badges */

//        List {
//            Text("Item-1")
//                .badge(50)
//            Text("Item-2")
//                .badge("New")
//            Text("Item-3")
//            Text("Item-4")
//            Text("Item-5")
//
//        }
        
        /* Tab View Example Badges */
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("TAB-1")
                }
                .badge(100)

            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("TAB-1")
                }
                .badge("5 New")

            Color.purple
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("TAB-1")
                }
                .badge(0)
        }
    }
}

struct BadgesBootcampDemo_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcampDemo()
    }
}
