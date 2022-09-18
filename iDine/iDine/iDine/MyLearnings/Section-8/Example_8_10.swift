//
//  Example_8_10.swift
//  iDine
//
//  Created by Sagar Kadam on 18/09/22.
//

import SwiftUI


struct NewsItem: Decodable, Identifiable {
    let id: Int
    let title: String
    let strap: String
}

struct Example_8_10_1: View {
    var body: some View {
        NavigationView {
            List(1..<100) { row in
                Text("Row \(row)")
                
            }.refreshable {
                print("Do your refresh work here")
            }
        }
    }
}
struct Example_8_10: View {
    @State private var news = [
        NewsItem(id: 0, title: "Want the latest news?", strap: "Pull to refresh!")
    ]
    
    var body: some View {
        VStack {
            
            NavigationLink(destination: Example_8_10_1()) {
                Text("Example-1")
            }
            Button("Reset") {
                news = []
                news = [
                    NewsItem(id: 0, title: "Want the latest news?", strap: "Pull to refresh!")
                ]
            }
            .disabled(news.count == 1)
            NavigationView {
                List(news) { item in
                    VStack(alignment: .leading) {
                        Text(item.title)
                            .font(.headline)
                        Text(item.strap)
                            .foregroundColor(.secondary)
                    }
                }
                .refreshable {
                    do {
                        let url = URL(string: "https://www.hackingwithswift.com/samples/news-1.json")!
                        let (data, _) = try await URLSession.shared.data(from: url)
                        news = try JSONDecoder().decode([NewsItem].self, from: data)
                        
                    } catch {
                        news = []
                    }
                }
            }
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-enable-pull-to-refresh", title: "Pull to refresh")
        }
       
        .padding()
    }
}

struct Example_8_10_Previews: PreviewProvider {
    static var previews: some View {
        Example_8_10()
    }
}
