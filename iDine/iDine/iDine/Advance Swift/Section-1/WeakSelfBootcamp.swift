//
//  WeakSelfBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 30/09/22.
//

import SwiftUI

struct WeakSelfBootcamp: View {
    @AppStorage("count") var count: Int?
    
    init() {
        count = 0
    }
    
    var body: some View {
        NavigationView {
            NavigationLink("Navigate", destination: WeakSelfSecondScreen())
                .navigationTitle("Screen 1")
        }
        .overlay(
            Text("\(count ?? 0)")
                .font(.largeTitle)
                .padding()
                .background(Color.green.cornerRadius(10))
            , alignment: .topTrailing)
            
    
        
        Section {
            MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=TPHp9kR0Go8&list=PLwvDm4VfkdpiagxAXCT33Rkwnc5IVhTar&index=19", title: "Weak Self Usage & WHY ")
        }
        
    }
}

struct WeakSelfSecondScreen: View {
    @StateObject var vm = WeakSelfSecondScreenViewModel()
    
    var body: some View {
        Text("Second View")
            .font(.largeTitle)
            .foregroundColor(.red)
        
        if let data = vm.data {
            Text(data)
        }
    }
}

class WeakSelfSecondScreenViewModel: ObservableObject {
    
    @Published var data: String? = nil
    
    init() {
        print("Initialize View Model 😊")
        let currentCount = UserDefaults.standard.integer(forKey: "count")
        UserDefaults.standard.set(currentCount + 1, forKey: "count")
        getData()
    }
    
    deinit {
        let currentCount = UserDefaults.standard.integer(forKey: "count")
        UserDefaults.standard.set(currentCount - 1, forKey: "count")
        print("Deinitialize View Model 😔")

    }
    
    func getData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 500) { [weak self] in
            self?.data = "NEW DATA !!!! 😇"
        }
    }
}

struct WeakSelfBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        WeakSelfBootcamp()
    }
}
