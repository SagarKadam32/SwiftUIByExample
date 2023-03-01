//
//  Basics_19_Lists_Bootcamp.swift
//  iDine
//
//  Created by Capgemini-DA073 on 1/3/23.
//

import SwiftUI

struct Basics_19_Lists_Bootcamp: View {
    
    @State var fruits: [String] = ["Apple", "Orange", "Banana","Peach"]
    @State var veggies: [String] = ["tomato", "potato", "carrot"]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding(.vertical)
                        }
                        .onDelete(perform: delete)
                        .onMove (perform: move)
                        .listRowBackground(Color.blue)
                    }
                
                Section(
                    header:
                        HStack {
                            Text("Veggies")
                            Image(systemName: "cone.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.blue)
                
                ) {
                        ForEach(veggies, id: \.self) { vegetable in
                            Text(vegetable.capitalized)
                        }
                    }
            }
            .accentColor(.purple)
            //.listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffSet: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffSet)
    }
    
    func add(){
        fruits.append("Strawberry")
    }
}

struct Basics_19_Lists_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_19_Lists_Bootcamp()
    }
}
