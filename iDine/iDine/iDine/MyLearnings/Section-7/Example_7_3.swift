//
//  Example_7_3.swift
//  iDine
//
//  Created by Sagar Kadam on 17/09/22.
//

import SwiftUI


class GameSettings: ObservableObject {
    @Published var score = 0
}

struct ScoreView: View {
    @EnvironmentObject var settings: GameSettings
    
    var body: some View {
        Text("Score: \(settings.score)")
    }
}

struct Example_7_3: View {
    @StateObject var settings = GameSettings()
    
    var body: some View {
        NavigationView {
            VStack {

                Button("Increase Score") {
                    settings.score += 1
                }
            
                NavigationLink(destination: ScoreView()) {
                    Text("Show Detail View")
                }
                
                MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-environmentobject-to-share-data-between-views", title: "@EnvironmentObject to share data between views")
            }
            .padding()
        }
        .environmentObject(settings)
    }
}

struct Example_7_3_Previews: PreviewProvider {
    static var previews: some View {
        Example_7_3()
    }
}
