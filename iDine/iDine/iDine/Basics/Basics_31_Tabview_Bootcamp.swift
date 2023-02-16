//
//  Basics_31_Tabview_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 16/02/23.
//

import SwiftUI

struct Basics_31_Tabview_Bootcamp: View {
    var body: some View {
        
        /* TabView with a View */
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            BrowseView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }

        
        /*
        /* Basic TabView */
        TabView {
            Text("HOME TAB")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Text("BROWSE TAB")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
            
            Text("PROFILE TAB")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(.teal)
        */
    }
}

struct Basics_31_Tabview_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_31_Tabview_Bootcamp()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.blue
            Text("HOME TAB")
                .font(.largeTitle)
                .foregroundColor(.white)
            
        }
        
    }
}

struct BrowseView: View {
    var body: some View {
        ZStack {
            Color.green
            Text("BROWSE TAB")
                .font(.largeTitle)
                .foregroundColor(.white)
            
        }
        
    }
}

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.purple
            Text("PROFILE TAB")
                .font(.largeTitle)
                .foregroundColor(.white)
            
        }
        
    }
}
