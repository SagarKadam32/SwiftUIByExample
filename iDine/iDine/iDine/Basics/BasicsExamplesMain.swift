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
            
            NavigationLink(destination: Basics_2_ForEach_Bootcamp()) {
                Text("2. How to use ForEach loops in SwiftUI | Bootcamp #14")
            }
            
            NavigationLink(destination: Basics_3_ScrollView_Bootcamp()) {
                Text("3. Implementing a ScrollView in SwiftUI | Bootcamp #15")
            }
            
            NavigationLink(destination: Basics_4_LazyVGrid_Bootcamp()) {
                Text("4. LazyVGrid, LazyHGrid, and GridItems in SwiftUI | Bootcamp #16")
            }
            
            NavigationLink(destination: Basics_5_SafeArea_Bootcamp()) {
                Text("5. How to use and ignore the Safe Area in SwiftUI | Bootcamp #17")
            }
            
            NavigationLink(destination: Basics_6_Button_Bootcamp()) {
                Text("6. How to add Buttons to SwiftUI application | Bootcamp #18")
            }
            
            NavigationLink(destination: Basics_7_State_Bootcamp()) {
                Text("7. How to use @State property wrapper in SwiftUI | Bootcamp #19")
            }
            
            NavigationLink(destination: Basics_8_ExtractedFunctions_Bootcamp()) {
                Text("8. Extracting functions and subviews in SwiftUI | Bootcamp #20")
            }
            
            NavigationLink(destination: Basics_9_ExtractSubviews_Bootcamp()) {
                Text("9. How to Extract Subviews in SwiftUI | Bootcamp #21")
            }
            
            NavigationLink(destination: Basics_10_Binding_Bootcamp()) {
                Text("10. How to use @Binding property wrapper in SwiftUI | Bootcamp #22")
            }
        }
        
        Group {
            NavigationLink(destination: Basics_11_Conditional_Bootcamp()) {
                Text("11. How to use if-else and conditional statements in SwiftUI | Bootcamp #23")
            }
            
            NavigationLink(destination: Basics_12_TernaryOperator_Bootcamp()) {
                Text("12. How to use Ternary Operators in SwiftUI | Bootcamp #24")
            }
            
            NavigationLink(destination: Basics_13_Animations_Bootcamp()) {
                Text("13. Adding Animations in SwiftUI | Bootcamp #25")
            }
        }
    }
}

struct BasicsExamplesMain_Previews: PreviewProvider {
    static var previews: some View {
        BasicsExamplesMain()
    }
}
