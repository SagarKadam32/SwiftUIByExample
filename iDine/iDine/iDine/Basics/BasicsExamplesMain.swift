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
                Text("1. Using inits and enums in SwiftUI-BCMP-#13")
            }
            
            NavigationLink(destination: Basics_2_ForEach_Bootcamp()) {
                Text("2. Using ForEach loops in SwiftUI-BCMP-#14")
            }
            
            NavigationLink(destination: Basics_3_ScrollView_Bootcamp()) {
                Text("3. Implementing a ScrollView in SwiftUI-BCMP-#15")
            }
            
            NavigationLink(destination: Basics_4_LazyVGrid_Bootcamp()) {
                Text("4. LazyVGrid, LazyHGrid, and GridItems in SwiftUI-BCMP-#16")
            }
            
            NavigationLink(destination: Basics_5_SafeArea_Bootcamp()) {
                Text("5. Using and ignore the Safe Area in SwiftUI-BCMP-#17")
            }
            
            NavigationLink(destination: Basics_6_Button_Bootcamp()) {
                Text("6. How to add Buttons to SwiftUI application-BCMP-#18")
            }
            
            NavigationLink(destination: Basics_7_State_Bootcamp()) {
                Text("7. Using @State property wrapper in SwiftUI-BCMP-#19")
            }
            
            NavigationLink(destination: Basics_8_ExtractedFunctions_Bootcamp()) {
                Text("8. Extracting functions and subviews in SwiftUI-BCMP-#20")
            }
            
            NavigationLink(destination: Basics_9_ExtractSubviews_Bootcamp()) {
                Text("9. How to Extract Subviews in SwiftUI-BCMP-#21")
            }
            
            NavigationLink(destination: Basics_10_Binding_Bootcamp()) {
                Text("10. Using @Binding property wrapper in SwiftUI-BCMP-#22")
            }
        }
        
        Group {
            NavigationLink(destination: Basics_11_Conditional_Bootcamp()) {
                Text("11. Using if-else and conditional statements in SwiftUI-BCMP-#23")
            }
            
            NavigationLink(destination: Basics_12_TernaryOperator_Bootcamp()) {
                Text("12. Using Ternary Operators in SwiftUI-BCMP-#24")
            }
            
            NavigationLink(destination: Basics_13_Animations_Bootcamp()) {
                Text("13. Adding Animations in SwiftUI-BCMP-#25")
            }
            
            NavigationLink(destination: Basics_14_AnimationCurvesAndTimings_Bootcamp()) {
                Text("14. Animation Curves and Animation Timing in SwiftUI-BCMP-#26")
            }
            NavigationLink(destination: Basics_15_Transition_Bootcamp()) {
                Text("15. Using Transition in SwiftUI-BCMP-#27")
            }
            
            
            NavigationLink(destination: Basics_16_Sheets_Bootcamp()) {
                Text("16. Display pop-up Sheets and FullScreenCovers in SwiftUI-BCMP-#28")
            }
            
            
        }
    }
}

struct BasicsExamplesMain_Previews: PreviewProvider {
    static var previews: some View {
        BasicsExamplesMain()
    }
}
