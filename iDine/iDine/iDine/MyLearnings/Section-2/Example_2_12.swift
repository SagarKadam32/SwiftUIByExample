//
//  Example_2_12.swift
//  iDine
//
//  Created by Sagar Kadam on 10/09/22.
//

import SwiftUI

struct Example_2_12: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.dynamicTypeSize) var dynamicTypeSize

    var body: some View {
        /*
        let layout = horizontalSizeClass == .regular ? AnyLayout(HStack()) : AnyLayout(VStack())

        layout {
            Image(systemName: "1.circle")
            Image(systemName: "2.circle")
            Image(systemName: "3.circle")
        }
        .font(.largeTitle)
        */
        
        /*
         let layout = dynamicTypeSize <= .xxxLarge ? AnyLayout(HStack()) : AnyLayout(VStack())

         layout {
             Image(systemName: "1.circle")
             Image(systemName: "2.circle")
             Image(systemName: "3.circle")
         }
         .font(.largeTitle)
         */
        Text("Test")
    }
}

struct Example_2_12_Previews: PreviewProvider {
    static var previews: some View {
        Example_2_12()
    }
}
