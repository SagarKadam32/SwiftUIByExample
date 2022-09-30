//
//  TypealiasBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 30/09/22.
//

import SwiftUI

struct MovieModel {
    let title: String
    let director: String
    let count: Int
}

typealias TVModel = MovieModel

struct TypealiasBootcamp: View {
    // @State var item: MovieModel = MovieModel(title: "Title", director: "Joe", count: 5)
    
    @State var item: TVModel = TVModel(title: "TV Title", director: "Emilly", count: 10)

    var body: some View {
         
        VStack {
            Text(item.title)
            Text(item.director)
            Text("\(item.count)")
            
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=wBd3s4ZW8Ps&list=PLwvDm4VfkdpiagxAXCT33Rkwnc5IVhTar&index=21", title: "How to use Typealias in Swift")
            }
        }
        

    }
}

struct TypealiasBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TypealiasBootcamp()
    }
}
