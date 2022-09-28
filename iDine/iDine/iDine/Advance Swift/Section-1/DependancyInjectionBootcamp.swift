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

protocol DataServiceProtocol {
    func getData() -> AnyPublisher<[PostModel], Error>
}

class ProductionDataService: DataServiceProtocol {
    let url: URL
    
    init(url: URL) {
        self.url = url
    }

    func getData() -> AnyPublisher<[PostModel], Error> {
        URLSession.shared.dataTaskPublisher(for: url)
            .map({ $0.data})
            .decode(type: [PostModel].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}

class MockDataService: DataServiceProtocol {
    
    let testData: [PostModel]
    
    init(data: [PostModel]?) {
        self.testData = data ?? [
            PostModel(userId: 1, id: 1, title: "One", body: "One"),
            PostModel(userId: 2, id: 2, title: "Two", body: "Two"),
            PostModel(userId: 3, id: 3, title: "Three", body: "Three"),
            PostModel(userId: 4, id: 4, title: "Four", body: "Four")
        ]
    }
    
    func getData() -> AnyPublisher<[PostModel], Error> {
        Just(testData)
            .tryMap({ $0 })
            .eraseToAnyPublisher()
    }
    
}

class DependancyInjectionViewModel: ObservableObject {
    @Published var dataArray:[PostModel] = []
    var cancellables = Set<AnyCancellable>()
    let dataService: DataServiceProtocol
    
    init(dataService: DataServiceProtocol) {
        self.dataService = dataService
        loadPosts()
    }
    
    private func loadPosts() {
        dataService.getData()
            .sink { _ in
                
            } receiveValue: { [weak self] returnedPosts in
                self?.dataArray = returnedPosts
            }
            .store(in: &cancellables)
    }
    
}

struct DependancyInjectionBootcamp: View {
    @StateObject private var vm : DependancyInjectionViewModel
    init(dataService: DataServiceProtocol) {
        _vm = StateObject(wrappedValue: DependancyInjectionViewModel.init(dataService: dataService))
    }
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
    // static let dataService = ProductionDataService(url: URL(string: "https://jsonplaceholder.typicode.com/posts")!)
    static let dataService = MockDataService(data: nil)
    static var previews: some View {
        DependancyInjectionBootcamp(dataService: dataService)
    }
}
