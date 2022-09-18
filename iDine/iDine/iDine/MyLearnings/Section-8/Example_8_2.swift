//
//  Example_8_2.swift
//  iDine
//
//  Created by Sagar Kadam on 18/09/22.
//

import SwiftUI

struct Restaurant: Identifiable, Hashable {
    let id = UUID()
    let name: String
}

struct RestaurantRow: View {
    var restaurant: Restaurant
    
    var body: some View {
        Text("Come and eat at \(restaurant.name)")
    }
}
struct Example_8_2: View {
    @State private var newRestaurant : String = ""
    @State private var restaurents = [
        Restaurant(name: "Joe's Original"),
        Restaurant(name: "The Real Joe's Original"),
        Restaurant(name: "Original Joe's")
        
    ]
    
    var body: some View {
        VStack {
            TextField("Enter New Restaurant Name", text: $newRestaurant)
                .textFieldStyle(.roundedBorder)
    
            Button("Add Restaurant") {
                self.restaurents.append(Restaurant(name: newRestaurant))
                newRestaurant = ""
            }
            .font(.headline)
            .buttonStyle(.bordered)
            .frame(width: 150, height: 30)
            .background(newRestaurant.isEmpty ? .gray: .blue)
            .foregroundColor(.white)
            .disabled(newRestaurant.isEmpty)
            
            List{
                ForEach(restaurents, id: \.self) { restaurant in
                    RestaurantRow(restaurant: restaurant)
                }
                .onDelete(perform: delete)
            }
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-a-list-of-dynamic-items", title: "List of Dynamic Items")
        }
       
        .padding()
    }
    
    func delete(at offsets: IndexSet) {
        restaurents.remove(atOffsets: offsets)
    }
}

/*
struct Example_8_2_Previews: PreviewProvider {
    static v∫ar previews: some View {
        Example_8_2(.constant(newRestaurant: "Sagar"))
    }
} */
