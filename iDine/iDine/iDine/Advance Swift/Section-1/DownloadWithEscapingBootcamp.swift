//
//  DownloadWithEscapingBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 02/10/22.
//

import SwiftUI

struct PostModelObject : Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

class DownloadWithEscapingViewModel: ObservableObject {
    @Published var posts: [PostModelObject] = []
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        downloadData(fromURL: url) { (returnedData) in
            if let returnedData = returnedData {
                guard let newPost = try? JSONDecoder().decode([PostModelObject].self, from: returnedData) else { return }
                DispatchQueue.main.async { [weak self] in
                    self?.posts = newPost
                }
            } else {
                print("No data returned.")
            }
        }
    }
    
    func downloadData(fromURL url: URL, completionHandler: @escaping (_ data: Data?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard
                let data = data,
                error == nil,
                let response = response as? HTTPURLResponse,
                response.statusCode >= 200 && response.statusCode < 300 else {
                print("Error downloading data..")
                completionHandler(nil)
                return
            }
            completionHandler(data)
      
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
            
            List {
                ForEach(vm.posts) { post in
                    VStack(alignment: .leading) {
                        Text(post.title)
                            .font(.headline)
                        Text(post.body)
                            .foregroundColor(.gray)
                    }
                }
            }
            
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
