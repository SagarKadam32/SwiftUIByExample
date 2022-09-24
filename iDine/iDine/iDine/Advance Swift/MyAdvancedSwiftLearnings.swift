//
//  MyAdvancedSwiftLearnings.swift
//  iDine
//
//  Created by Sagar Kadam on 24/09/22.
//

import SwiftUI

struct MyAdvancedSwiftLearnings: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollViewReader { value in
                    
                    VStack(spacing: 20) {
                        Group {
                            SectionMainView(sectionTitle: "Advanced Swift Topics", sectionTitleDescription: "More advanced level swift code examples") {
                                AdvExample_1_Main()
                            }
                            .id(0)
                        }
                        
                        Group { }
                    }
                    .onAppear() {
                        value.scrollTo(0)
                    }
                    .padding()
                  }
            }
            .navigationTitle("My Advanced Swift")
        }
    }
}

struct MyAdvancedSwiftLearnings_Previews: PreviewProvider {
    static var previews: some View {
        MyAdvancedSwiftLearnings()
    }
}
