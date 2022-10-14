//
//  CacheBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 14/10/22.
//

import SwiftUI

struct CacheBootcamp: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("In this video we will implement a simple NSCache to temporarily save an image. Caching is a very common technique used in all software development (not just iOS Development) where we can take objects that we've downloaded from the internet and temporarily store them somewhere for reuse. This is help us avoid having to re-download the objects if they appear on the screen a second time. This is quite similar to the last video in this series, except the FileManager is for more permanent objects that will save to the device forever, while NSCache is for temporary objects that will only save for the current session.\n In the next video in this series, we develop a real application that efficiently utilizes an NSCache for downloading images!")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                
                Section {
                    MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=yXSC6jTkLP4&list=PLwvDm4VfkdpiagxAXCT33Rkwnc5IVhTar&index=29&t=5s", title: "Save and cache images in a SwiftUI app")
                }
            }
            .padding()
        }
    }
}

struct CacheBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CacheBootcamp()
    }
}
