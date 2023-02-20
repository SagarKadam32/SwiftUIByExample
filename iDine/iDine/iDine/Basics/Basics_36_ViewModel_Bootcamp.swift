//
//  Basics_36_ViewModel_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 20/02/23.
//

import SwiftUI

struct FruitModel : Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
    
}

class FruitViewModel : ObservableObject {
    
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Oranges", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 3)
        let fruit3 = FruitModel(name: "Watermelon", count: 5)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }

    }
    
    func deleteFrouit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct Basics_36_ViewModel_Bootcamp: View {
    
    
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFrouit)
                }

                
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .onAppear() {
                fruitViewModel.getFruits()
            }
        }
    }
}

struct Basics_36_ViewModel_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_36_ViewModel_Bootcamp()
    }
}
