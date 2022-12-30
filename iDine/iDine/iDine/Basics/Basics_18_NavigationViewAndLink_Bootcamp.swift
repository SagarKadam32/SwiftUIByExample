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
                    MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=tXFwyFdkSas&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=31", title: "How to use NavigationView and NavigationLink in SwiftUI | Bootcamp #30")
                }
            }
            .navigationTitle("All Inboxes")
            

        }
    }
}

struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
            
            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click Here", destination: Text("3rd Screen!"))
            }
        }
        .navigationBarHidden(true)
    }
}

struct Basics_18_NavigationViewAndLink_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_18_NavigationViewAndLink_Bootcamp()
    }
}
