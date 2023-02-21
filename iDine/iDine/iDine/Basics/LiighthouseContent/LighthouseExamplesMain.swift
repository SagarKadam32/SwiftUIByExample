//
//  LighthouseExamplesMain.swift
//  iDine
//
//  Created by Sagar Kadam on 18/02/23.
//

import SwiftUI

struct LighthouseExamplesMain: View {
    var body: some View {
        Group {
            NavigationLink(destination: TextDemoBootcamp()) {
                Text("1. Demo Text() ")
            }
            
            NavigationLink(destination: IconBootcampDemo()) {
                Text("2. Demo Image Icons() ")
            }
            
            NavigationLink(destination: Basics_37_EnviromentObject_Demo_Bootcamp()) {
                Text("3. How to use @EnvironmentObject in SwiftUI")
            }
        }
    }
}

struct LighthouseExamplesMain_Previews: PreviewProvider {
    static var previews: some View {
        LighthouseExamplesMain()
    }
}
