//
//  Example_1_Main.swift
//  iDine
//
//  Created by Sagar Kadam on 09/09/22.
//

import SwiftUI

struct Example_1_Main: View {
    var body: some View {
    
            Group {
                NavigationLink(destination: Example_1_1()) {
                    Text("1. How to create static labels with a Text view")
                }
                
                NavigationLink(destination: Example_1_2()) {
                    Text("2. How to style text views with fonts, colors, line spacing, and more")
                }
                
                NavigationLink(destination: Example_1_3()) {
                    Text("3. How to adjust text alignment using multilineTextAlignment()")
                }
                
                NavigationLink(destination: Example_1_4()) {
                    Text("4. How to format text inside text views")
                }
                
                NavigationLink(destination: Example_1_5()) {
                    Text("5. How to add spacing between letters in text")
                }
            }
            
            Group {
                NavigationLink(destination: Example_1_6()) {
                    Text("6. How to format dates inside text views")
                }
                
                NavigationLink(destination: Example_1_7()) {
                    Text("7. How to make TextField uppercase or lowercase using textCase()")
                }
                
                NavigationLink(destination: Example_1_8()) {
                    Text("8. How to show text and an icon side by side using Label")
                }
                
                NavigationLink(destination: Example_1_9()) {
                    Text("9. How to mark content as a placeholder using redacted()")
                }
                
                NavigationLink(destination: Example_1_10()) {
                    Text("10. How to mark content as private using privacySensitive()")
                }
                
                NavigationLink(destination: Example_1_11()) {
                    Text("11. How to render Markdown content in text")
                }
                
                NavigationLink(destination: Example_1_12()) {
                    Text("12. How to let users select text")
                }
            }
        }
}
   
       

struct Example_1_Main_Previews: PreviewProvider {
    static var previews: some View {
        Example_1_Main()
    }
}
