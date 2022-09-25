//
//  DependancyInjectionBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 25/09/22.
//

import SwiftUI
import Combine

struct PostModel: Codable, Identifiable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

class ProductionDataService {
    
    static let instance = ProductionDataService()
    
    let url: URL = URL(string: "https://jsonplaceholder.typicode.com/posts")!
    
    func getData() -> AnyPublisher<[PostModel], Error> {
        URLSession.shared.dataTaskPublisher(for: url)
            .map({ $0.data})
            .decode(type: [PostModel].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}

class DependancyInjectionViewModel: ObservableObject {
    
    @Published var dataArray:[PostModel] = []
    var cancellables = Set<AnyCancellable>()
    
    init() {
        loadPosts()
    }
    
    private func loadPosts() {
        ProductionDataService.instance.getData()
            .sink { _ in
                
            } receiveValue: { [weak self] returnedPosts in
                self?.dataArray = returnedPosts
            }
            .store(in: &cancellables)
    }
    
}

struct DependancyInjectionBootcamp: View {
    @StateObject private var vm = DependancyInjectionViewModel()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(vm.dataArray) { post in
                    Text(post.title)
                    RoundedRectangle(cornerRadius: 5)
                        .frame(height:0.5)
                }
                
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=E3x07blYvdE&list=PLwvDm4Vfkdphc1LLLjCaEd87BEg07M97y&index=18&t=164s", title: "Dependancy Injection")
            }
            .padding()
        }
    }
}

struct DependancyInjectionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DependancyInjectionBootcamp()
    }
}
