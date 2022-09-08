//
//  Example_1_12.swift
//  iDine
//
//  Created by Sagar Kadam on 09/09/22.
//

import SwiftUI

struct Example_1_12: View {
    var body: some View {
        VStack(spacing:50) {
            Text("You can not touch this")
            
            Text("Break it down!")
                .textSelection(.enabled)
            
            List(0..<5) { index in
                Text("Row \(index)")
                
            }
            .textSelection(.enabled)
        }

    }
}

struct Example_1_12_Previews: PreviewProvider {
    static var previews: some View {
        Example_1_12()
    }
}
