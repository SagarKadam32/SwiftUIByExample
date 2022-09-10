//
//  Example_3_1.swift
//  iDine
//
//  Created by Sagar Kadam on 10/09/22.
//

import SwiftUI

struct Example_3_1: View {
    var body: some View {
        VStack {
            VStack {
                Text("SwiftUI")
                Text("rocks")
            }
            
            HStack {
                Text("SwiftUI")
                Text("rocks")
            }
        }

    }
}

struct Example_3_1_Previews: PreviewProvider {
    static var previews: some View {
        Example_3_1()
    }
}
