//
//  BasicsExamplesMain.swift
//  iDine
//
//  Created by Sagar Kadam on 16/12/22.
//

import SwiftUI

struct BasicsExamplesMain: View {
    var body: some View {
        Group {
            NavigationLink(destination: Basics_1_Initializer_Bootcamp(count: 12, fruit: .apple)) {
                Text("1. How to use inits and enums in SwiftUI | Bootcamp #13")
            }
            
        }
    }
}

struct BasicsExamplesMain_Previews: PreviewProvider {
    static var previews: some View {
        BasicsExamplesMain()
    }
}
