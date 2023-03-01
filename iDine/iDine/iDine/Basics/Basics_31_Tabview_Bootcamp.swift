//
//  Basics_31_Tabview_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 16/02/23.
//

import SwiftUI

struct Basics_31_Tabview_Bootcamp: View {
    
    @State var selectedTab: Int = 0
    
    let icons: [String] = ["heart.fill", "globe", "person.fill"]
    
    var body: some View {
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300 )
        .tabViewStyle(PageTabViewStyle())
        
        /* TabView with a View */
//        TabView(selection: $selectedTab) {
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//
//            BrowseView()
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//
//            ProfileView()
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }

        
        
        /* Basic TabView */
//        TabView {
//            Text("HOME TAB")
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//
//            Text("BROWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//        }
//        .accentColor(.teal)
        
    }
}

struct Basics_31_Tabview_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_31_Tabview_Bootcamp()
    }
}

struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            Color.blue
            VStack {
                Text("HOME TAB")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go To Profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10 )
                    
                })
               
                
            }
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
