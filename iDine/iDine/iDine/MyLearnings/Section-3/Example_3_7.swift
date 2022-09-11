//
//  Example_3_7.swift
//  iDine
//
//  Created by Sagar Kadam on 11/09/22.
//

import SwiftUI

struct SampleRow: View {
    let id: Int
    
    var body: some View {
        Text("Row \(id)")
    }
    
    init(id: Int) {
        print("Loading row \(id)")
        self.id = id
    }
}

struct Example_3_7: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                /*
                ForEach(1...100, id: \.self) { value in
                    Text("Row \(value)")
                }*/
                
                ForEach(1...1000, id: \.self, content: SampleRow.init)
            }
        }

    }
}

struct Example_3_7_Previews: PreviewProvider {
    static var previews: some View {
        Example_3_7()
    }
}
