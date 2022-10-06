//
//  DownloadWithCombine.swift
//  iDine
//
//  Created by Sagar Kadam on 06/10/22.
//

import SwiftUI
import Combine

struct NewPostModel : Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

class DownloadWithCombineViewModel: ObservableObject {
    
    @Published var posts: [NewPostModel] = []
    var cancellables = Set<AnyCancellable>()
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        /*
        // 1. Sign up for monthly subsription for the package to delivered
        // 2. the company would make the package behind the scene
        // 3. receive the package at front door
        // 4. make sure box is not damaged
        // 5. open and make sure the item is correct
        // 6. user the item !!!!!
        // 7. cancellable at any time !!
        
        
        // 1. Create the publisher
        // 2. Put the publisher on the background thread - Subscribe pubshers on background thread
        // 3. Receive on main therad
        // 4. tryMap - check that data is good
        // 5. Decode - Decode data into postModel
        // 6. Sink - Put the item into our app
        // 7. store - cancel the subscription if needed
        */
        
        URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .background))
            .receive(on: DispatchQueue.main)
            .tryMap { (data, response) -> Data in
                guard let response = response as? HTTPURLResponse,
                      response.statusCode >= 200 && response.statusCode < 300 else {
                    throw URLError(.badServerResponse)
                }
                return data
            }
            .decode(type: [NewPostModel].self, decoder: JSONDecoder())
            .sink { (completion) in
                print("Completion: \(completion)")
            } receiveValue: { [weak self] (returnedPosts) in
                
                self?.posts = returnedPosts
            }
            .store(in: &cancellables)
    }
}

struct DownloadWithCombine: View {
    
    @StateObject var vm = DownloadWithCombineViewModel()
    
    var body: some View {
        
        VStack {
            Text("In this video we jump in to the excited world of Combine! Combine is a new framework from Apple that is made specifically for handling asynchronous events. By using Publishers and Subscribers, we are able to constantly keep out data in sync across our application. At the end of this video, we will compare the code to the last video (doing the same with but without Combine) to highlight the benefits of using this method. In the next few videos we will continue exploring this new framework!")
                .font(.headline)
                .fontWeight(.semibold)
            
            Spacer()
            
            List{
                ForEach(vm.posts) { post in
                    
                    Text(post.title)
                        .font(.headline)
                    
                    Text(post.body)
                        .foregroundColor(.gray)
                    
                }
            }
            
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=fdxFp5vU6MQ&list=PLwvDm4VfkdpiagxAXCT33Rkwnc5IVhTar&index=24", title: "Download JSON from API in Swift with Combine")
            }
            
        }.padding()
        


    }
}

struct DownloadWithCombine_Previews: PreviewProvider {
    static var previews: some View {
        DownloadWithCombine()
    }
}
