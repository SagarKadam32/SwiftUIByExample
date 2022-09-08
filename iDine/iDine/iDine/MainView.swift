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
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
            MyLearnings()
                .tabItem {
                    Label("My Learning", systemImage: "pencil.and.outline")
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
