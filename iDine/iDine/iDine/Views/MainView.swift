//
//  MainView.swift
//  iDine
//
//  Created by Sagar Kadam on 07/09/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Basics()
                .tabItem {
                    Label("Basic Swift", systemImage: "pencil.and.outline")
                }
            LighthouseDemos()
                .tabItem {
                    Label("Lighthouse", systemImage: "pencil.and.outline")
                }
            MyAdvancedSwiftLearnings()
                .tabItem {
                    Label("Advanced Swift", systemImage: "pencil.and.outline")
                }
            MyLearnings()
                .tabItem {
                    Label("My Learning", systemImage: "pencil.and.outline")
                }
  
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }

        }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
           .environmentObject(Order())
    }
}
