//
//  Example_2_6.swift
//  iDine
//
//  Created by Sagar Kadam on 10/09/22.
//

import SwiftUI

struct SimpleGameResult {
    let id = UUID()
    let score: Int
}


struct SimpleGameResultIdentifiable : Identifiable {
    let id = UUID()
    let score: Int
}

struct Example_2_6: View {
    let colors: [Color] = [.red, .green, .blue]
    let results = [
                    SimpleGameResult(score: 8),
                    SimpleGameResult(score: 5),
                    SimpleGameResult(score: 10)
    ]
    
    let resultsIdentifiable = [
        SimpleGameResultIdentifiable(score: 8),
        SimpleGameResultIdentifiable(score: 5),
        SimpleGameResultIdentifiable(score: 10)
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing:10) {
                Text("6.  How to create views in a loop using ForEach")
                    .font(.title)
                    .fontWeight(.bold)
                
                VStack(alignment: .leading) {
                    ForEach((1...10).reversed(), id: \.self) {
                        Text("\($0)..")
                    }
                    Text("Ready or not, here I come!")
                }
                
                VStack {
                    ForEach(colors, id: \.self) { color in
                        Text(color.description.capitalized)
                            .padding()
                            .background(color)
                    }
                }
                
                VStack {
                    ForEach(results, id: \.id) { result in
                        Text("Results: \(result.score)")
                        
                    }
                }
                
                VStack {
                    ForEach(resultsIdentifiable) { result in
                        Text("Results: \(result.score)")
                        
                    }
                }
            }
            .padding()
        }

    }
}

struct Example_2_6_Previews: PreviewProvider {
    static var previews: some View {
        Example_2_6()
    }
}
