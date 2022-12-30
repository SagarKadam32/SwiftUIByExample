//
//  Basics_18_NavigationViewAndLink_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 30/12/22.
//

import SwiftUI

struct Basics_18_NavigationViewAndLink_Bootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello, World!", destination: MyOtherScreen())
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")

                Section {
                    MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=su0KLQq0JM0&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=14", title: "How to use inits and enums in SwiftUI | Bootcamp #13")
                }
            }
            

        }
    }
}

struct MyOtherScreen: View {
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
            
            NavigationLink("Click Here", destination: Text("3rd Screen!"))
        }
    }
}

struct Basics_18_NavigationViewAndLink_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_18_NavigationViewAndLink_Bootcamp()
    }
}
