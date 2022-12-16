//
//  Basics.swift
//  iDine
//
//  Created by Sagar Kadam on 16/12/22.
//

import SwiftUI

struct Basics: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollViewReader { value in
                    
                    VStack(spacing: 20) {
                        Group {
                            SectionMainView(sectionTitle: "Basic Swift Topics", sectionTitleDescription: "Basic level swift code examples") {
                                BasicsExamplesMain()
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
            .navigationTitle("Basics Swift")
        }
    }
}

struct Basics_Previews: PreviewProvider {
    static var previews: some View {
        Basics()
    }
}
