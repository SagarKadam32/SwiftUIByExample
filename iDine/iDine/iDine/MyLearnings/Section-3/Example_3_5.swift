//
//  Example_3_5.swift
//  iDine
//
//  Created by Sagar Kadam on 11/09/22.
//

import SwiftUI

struct Example_3_5: View {
    let colors: [Color] = [.red, .green, .blue]
    var body: some View {
        ScrollView {
            ScrollViewReader { value in
                Button("Jumpt to #8") {
                    value.scrollTo(8, anchor: .top)
                    
                }
                .padding()
                
                ForEach(0..<100) { i in
                    Text("Example \(i)")
                        .font(.title)
                        .frame(width:200, height: 200)
                        .background(colors[i % colors.count])
                        .id(i)
                    
                }
            }
        }
    }
}

struct Example_3_5_Previews: PreviewProvider {
    static var previews: some View {
        Example_3_5()
    }
}
