//
//  Example_3_4.swift
//  iDine
//
//  Created by Sagar Kadam on 11/09/22.
//

import SwiftUI

struct Example_3_4: View {
    var body: some View {
        VStack {
            Text("How to add horizontal and vertical scrolling using ScrollView")
 
            
            ScrollView([.horizontal, .vertical]) {
             VStack(spacing: 20) {
                 ForEach(0..<10) {
                        Text("Item \($0)")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(width: 200, height: 200)
                            .background(.mint)
                    }
                }
            }
        }

       
        
    }
}

struct Example_3_4_Previews: PreviewProvider {
    static var previews: some View {
        Example_3_4()
    }
}
