//
//  Basics_9_ExtractSubviews_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 28/12/22.
//

import SwiftUI

struct Basics_9_ExtractSubviews_Bootcamp: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
        
            VStack {
                HStack {
                    MyItem(title: "Apples", count: 2, color: .red)
                    MyItem(title: "Oranges", count: 3, color: .orange)
                    MyItem(title: "Bananas", count: 5, color: .yellow)

                }
          

                Section {
                    MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=su0KLQq0JM0&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=14", title: "How to use inits and enums in SwiftUI | Bootcamp #13")
                }
                .foregroundColor(.white)
            }
        }

    }
}

struct Basics_9_ExtractSubviews_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_9_ExtractSubviews_Bootcamp()
    }
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {

        VStack {
            
            VStack {
                Text("\(count)")
                Text(title)
            }
            .padding()
            .background(color)
            .cornerRadius(10)
            

        }
    }
}
