//
//  Example_3_2.swift
//  iDine
//
//  Created by Sagar Kadam on 10/09/22.
//

import SwiftUI

struct Example_3_2: View {
    var body: some View {
        
        VStack {
            Text("First Label")
                .background(.yellow)

            Spacer(minLength: 50)
              //  .frame(height: 50)
            
            Text("Second Label")
                .background(.yellow)

        }
    }
}

struct Example_3_2_Previews: PreviewProvider {
    static var previews: some View {
        Example_3_2()
    }
}
