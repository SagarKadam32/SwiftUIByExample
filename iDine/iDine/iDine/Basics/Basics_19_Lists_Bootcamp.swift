//
//  Basics_19_Lists_Bootcamp.swift
//  iDine
//
//  Created by Capgemini-DA073 on 1/3/23.
//

import SwiftUI

struct Basics_19_Lists_Bootcamp: View {
    
    @State var fruits: [String] = ["Apple", "Orange", "Banana","Peach"]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header: Text("Fruits")) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                        }
                        .onDelete(perform: delete)
                        .onMove (perform: move)
                    }
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton())
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffSet: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffSet)
    }
}

struct Basics_19_Lists_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_19_Lists_Bootcamp()
    }
}
