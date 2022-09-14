//
//  Example_5_2.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

struct DetailView: View {
    
    var body: some View {
        VStack {
            Text("Detail View")
        }
        .onAppear() {
            print("Detailed view appeared!")
        }
        .onDisappear() {
            print("Detailed view disappeared!")
        }
    }
}

struct Example_5_2: View {
    @AppStorage("name") var name = "Anonymous"
    var body: some View {
        VStack {
            
            Text("Your name is \(name).")
            NavigationLink(destination: DetailView()) {
                Text("Hello World!")
            }
            
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-respond-to-view-lifecycle-events-onappear-and-ondisappear", title: "onAppear() and onDisappear()")
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-run-code-when-your-app-launches", title: "Run Code App Launch")
            
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-an-appdelegate-to-a-swiftui-app", title: "AppDelegate to a SwiftUI app")
        }
        .onAppear() {
            print("ContentView Appeared!")
        }
        .onDisappear() {
            print("ContentView Disappeared!")
        }

    }
}

struct Example_5_2_Previews: PreviewProvider {
    static var previews: some View {
        Example_5_2()
    }
}
