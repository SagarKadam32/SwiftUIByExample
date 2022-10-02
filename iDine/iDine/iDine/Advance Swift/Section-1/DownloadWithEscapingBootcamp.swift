//
//  DownloadWithEscapingBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 02/10/22.
//

import SwiftUI

class DownloadWithEscapingViewModel: ObservableObject {
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                print("No Data")
                return
            }
            
            guard error == nil else {
                print("Error \(String(describing: error))")
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                print("Invalid Response")
                return
            }
            
            guard response.statusCode >= 200 && response.statusCode < 300 else {
                print("Status code should 2xx, but it is \(response.statusCode)")
                return
            }
            
            print("Successfully Downloaded Data !!!")
            print(data)
            let jsonString = String(data: data, encoding: .utf8)
            print(jsonString)
 
            
            
        }.resume()
    }
    
}

struct DownloadWithEscapingBootcamp: View {
    
    @StateObject var vm = DownloadWithEscapingViewModel()
    
    var body: some View {
        VStack {
            Text("We are finally ready to download data from the internet! In the last few videos we learned about background threads, weak self, and Codable - all of which we will use to efficiently download data from an API. In this video we will use a URLSession to connect to a public API to download posts in the form of JSON data. We will then convert the data into our local model, and display them on the screen.")
                .font(.headline)
                .fontWeight(.semibold)
            
            Spacer()
            
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=h42OHc5CRBQ&list=PLwvDm4VfkdpiagxAXCT33Rkwnc5IVhTar&index=24", title: "Download JSON from API in Swift w/ URLSession and escaping closures")
            }
            
        }
        .padding()
    }
}

struct DownloadWithEscapingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DownloadWithEscapingBootcamp()
    }
}
