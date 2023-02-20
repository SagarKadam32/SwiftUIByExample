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
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Oranges", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 3)
        let fruit3 = FruitModel(name: "Watermelon", count: 5)
        
        fruitArray.append(fruit1)
        fruitArray.append(fruit2)
        fruitArray.append(fruit3)
    }
    
    func deleteFrouit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct Basics_36_ViewModel_Bootcamp: View {
    
//    @State var fruitArray: [FruitModel] = [
//    FruitModel(name: "Apples", count: 5)
//    ]
    
    
    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
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
