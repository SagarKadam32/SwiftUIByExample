//
//  Example_2_11.swift
//  iDine
//
//  Created by Sagar Kadam on 10/09/22.
//

import SwiftUI

struct Example_2_11: View {
    var body: some View {
        Text("This needs to take up lots of space")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.yellow)
           // .persistentSystemOverlays(.hidden) /* New in iOS 16 */
            
    }
}

struct Example_2_11_Previews: PreviewProvider {
    static var previews: some View {
        Example_2_11()
    }
}
