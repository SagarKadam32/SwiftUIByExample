//
//  Example_1_4.swift
//  iDine
//
//  Created by Sagar Kadam on 08/09/22.
//

import SwiftUI

struct Example_1_4: View {
    @State private var ingredients = [String]()
    @State private var rolls = [Int]()
    let length = Measurement(value: 225, unit: UnitLength.feet)
    
    static let taskDateFormatLong: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    
    static let taskDateFormatShort: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
    
    
    static let taskDateFormatFull: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }()
    
    let dueDate = Date()
    
    var body: some View {
        NavigationView {
            VStack(spacing:10) {
                Text(ingredients, format: .list(type: .and))
                
                Button("Add Ingredient") {
                    let possibles = ["Egg", "Sausage", "Bacon", "Spam"]
                    
                    if let newIngredient = possibles.randomElement() {
                        ingredients.append(newIngredient)
                    }
                }
                
                Text(rolls, format: .list(memberStyle: .number, type: .and))
                
                Button("Roll Dice") {
                    let result = Int.random(in: 1...6)
                    rolls.append(result)
                }
                
                Text(length, format: .measurement(width: .wide))
                Text(length, format: .measurement(width: .narrow))
                Text(length, format: .measurement(width: .abbreviated))

                Group {
                    Text(72.3, format: .currency(code: "CAD"))
                    
                    Text("Task due date Long: \(dueDate, formatter: Self.taskDateFormatLong)")
                    
                    Text("Task due date Short: \(dueDate, formatter: Self.taskDateFormatShort)")
                    
                    Text("Task due date Full: \(dueDate, formatter: Self.taskDateFormatFull)")
                }

           

            }
            .padding()
            .navigationTitle("4. How to format text inside text views")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct Example_1_4_Previews: PreviewProvider {
    static var previews: some View {
        Example_1_4()
    }
}
