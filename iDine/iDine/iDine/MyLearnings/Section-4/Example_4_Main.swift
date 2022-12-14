//
//  Example_4_Main.swift
//  iDine
//
//  Created by Sagar Kadam on 11/09/22.
//

import SwiftUI

struct Example_4_Main: View {
    var body: some View {
        Group {
            NavigationLink(destination: Example_4_1()) {
                Text("1. Working with state\n How to create a tappable button\n How to disable the overlay color for images inside Button and NavigationLink")
            }
            
            NavigationLink(destination: Example_4_2()) {
                Text("2. How to read text from a TextField\n How to add a border to a TextField\n How to add a placeholder to a TextField\n How to disable autocorrect in a TextField\n How to dismiss the keyboard for a TextField\n How to format a TextField for numbers\n How to create secure text fields using SecureField")
            }
            
            NavigationLink(destination: Example_4_3()) {
                Text("3. How to create a toggle switch")
            }
            
            NavigationLink(destination: Example_4_4()) {
                Text("4. How to create a picker and read values from it")
            }
            
            NavigationLink(destination: Example_4_5()) {
                Text("5. How to create a date picker and read values from it")
            }
            
            NavigationLink(destination: Example_4_6()) {
                Text("6. How to create a segmented control and read values from it")
            }
            
            NavigationLink(destination: Example_4_7()) {
                Text("7. How to create a stepper and read values from it")
            }
            
            NavigationLink(destination: Example_4_8()) {
                Text("8. How to hide the label of a Picker, Stepper, Toggle, and more using labelsHidden()")
            }
            
            NavigationLink(destination: Example_4_9()) {
                Text("9. How to create multi-line editable text with TextEditor")
            }
            
            NavigationLink(destination: Example_4_10()) {
                Text("10. How to let users select a color with ColorPicker")
            }
        }
        
        Group {
            
            NavigationLink(destination: Example_4_11()) {
                Text("11. How to show progress on a task using ProgressView")
            }
            
            NavigationLink(destination: Example_4_12()) {
                Text("12. How to show indeterminate progress using ProgressView")
            }
            
            NavigationLink(destination: Example_4_13()) {
                Text("13. How to show a Map view")
            }
            
            NavigationLink(destination: Example_4_14()) {
                Text("14. How to show annotations in a Map view")
            }
            
            NavigationLink(destination: Example_4_15()) {
                Text("15. How to open web links in Safari")
            }
            
            NavigationLink(destination: Example_4_16()) {
                Text("16. How to customize the submit button for TextField, SecureField, and TextEditor")
            }
            
            NavigationLink(destination: Example_4_17()) {
                Text("17. How to take action when the user submits a TextField")
            }
            
            NavigationLink(destination: Example_4_18()) {
                Text("18. How to get bordered buttons that stand out")
            }
        }
    }
}

struct Example_4_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_Main()
    }
}
