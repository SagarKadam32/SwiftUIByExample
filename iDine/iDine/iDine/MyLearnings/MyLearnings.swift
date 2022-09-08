//
//  MyLearnings.swift
//  iDine
//
//  Created by Sagar Kadam on 08/09/22.
//

import SwiftUI

struct MyLearnings: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header:
                            Text("Working with static text")
                    .font(.headline)
                    .fontWeight(.black)
                            
                ) {
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
                       
                        
                        }

                }
            }
            .navigationTitle("My Learnings")
            
            
        }

    }
}

struct MyLearnings_Previews: PreviewProvider {
    static var previews: some View {
        MyLearnings()
    }
}
