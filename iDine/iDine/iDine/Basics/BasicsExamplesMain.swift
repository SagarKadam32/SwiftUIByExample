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
            NavigationLink(destination: Basics_17_Popovers_Bootcamp()) {
                Text("17. Using Sheets, Transitions, and Offsets to create a popover-BCMP-#29")
            }
            NavigationLink(destination: Basics_18_NavigationViewAndLink_Bootcamp()) {
                Text("18. Using How to use NavigationView and NavigationLink in SwiftUI-BCMP-#30")
            }
            NavigationLink(destination: Basics_19_Lists_Bootcamp()) {
                Text("19. Add, Edit, Delete & Move Items in Lists in SwiftUI-BCMP-#31")
            }
            NavigationLink(destination: Basics_20_Alerts_Bootcamp()) {
                Text("20. How to show Alerts in SwiftUI-BCMP-#32")
            }
        }
        Group {
            NavigationLink(destination: Basics_21_ActionSheets_Bootcamp()) {
                Text("21. How to make a reusable ActionSheet in SwiftUI-BCMP-#33")
            }
            NavigationLink(destination: Basics_22_ContextMenu_Bootcamp()) {
                Text("22. How to use ContextMenu in SwiftUI-BCMP-#34")
            }
            NavigationLink(destination: Basics_23_TextField_Bootcamp()) {
                Text("23. How to use TextField in SwiftUI-BCMP-#35")
            }
            NavigationLink(destination: Basics_24_TextEditor_Bootcamp()) {
                Text("24. How to use TextEditor in SwiftUI-BCMP-#36")
            }
            NavigationLink(destination: Basics_25_Toggle_Bootcamp()) {
                Text("25. How to use Toogle Switch in SwiftUI-BCMP-#37")
            }
            NavigationLink(destination: Basics_26_Picker_Bootcamp()) {
                Text("26. How to use Picker and PickerStyles in SwiftUI-BCMP-#38")
            }
            NavigationLink(destination: Basics_27_ColorPicker_Bootcamp()) {
                Text("27. How to use ColorPicker in SwiftUI-BCMP-#39")
            }
            
            NavigationLink(destination: Basics_28_DatePicker_Bootcamp()) {
                Text("28. How to use DatePicker to select dates in SwiftUI-BCMP-#40")
            }
            NavigationLink(destination: Basics_29_Stepper_Bootcamp()) {
                Text("29. Create a Stepper in SwiftUI-BCMP-#41")
            }
            
            NavigationLink(destination: Basics_30_Slider_Bootcamp()) {
                Text("30. How to use Slider in SwiftUI-BCMP-#42")
            }
        }
        
        Group {
            NavigationLink(destination: Basics_31_Tabview_Bootcamp()) {
                Text("31. Create a tab bar with TabView and PageTabViewStyle in SwiftUI-BCMP-#43")
            }
            
            NavigationLink(destination: Basics_32_Darkmode_Bootcamp()) {
                Text("32. Adapt for Dark Mode in in SwiftUI-BCMP-#44")
            }
            
            NavigationLink(destination: Basics_33_OnAppear_Bootcamp()) {
                Text("33. How to use onAppear and onDisappear in SwiftUI-BCMP-#46")
            }
            
            NavigationLink(destination: Basics_34_IfLetGuard_Bootcamp()) {
                Text("34. How to safely unwrap optionals in Swift with if-let and guard statements -BCMP-#47")
            }
            
            NavigationLink(destination: Basics_35_TapGesture_Bootcamp()) {
                Text("35. How to use Tap Gestures in SwiftUI -BCMP-#48")
            }
            
            NavigationLink(destination: Basics_36_ViewModel_Bootcamp()) {
                Text("36. How to use @ObservableObject and @StateObject in SwiftUI -BCMP-#49")
            }
            
            NavigationLink(destination: Basics_37_EnviromentObject_Demo_Bootcamp()) {
                Text("37. How to use @EnvironmentObject in SwiftUI -BCMP-#50")
            }
            
        }
    }
}

struct BasicsExamplesMain_Previews: PreviewProvider {
    static var previews: some View {
        BasicsExamplesMain()
    }
}
