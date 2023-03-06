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
            
            NavigationLink(destination: AppStorageBootcampDemo()) {
                Text("4. How to use @AppStorage in SwiftUI")
            }
            
            NavigationLink(destination: AsyncImageBootcampDemo()) {
                Text("5. How to use AsyncImage in SwiftUI")
            }
            
            
            NavigationLink(destination: BackgroundMaterialBootcampDemo()) {
                Text("6. System Materials and Backgrounds in SwiftUI")
            }
            
            NavigationLink(destination: TextSelectionBootcampDemo()) {
                Text("7. TextSelection in SwiftUI")
            }
            
            NavigationLink(destination: ListSwipeActionsBootcampDemo()) {
                Text("8. Multi-SwipeActions in SwiftUI")
            }
            
        }
    }
}

struct LighthouseExamplesMain_Previews: PreviewProvider {
    static var previews: some View {
        LighthouseExamplesMain()
    }
}
