//
//  LighthouseDemos.swift
//  iDine
//
//  Created by Sagar Kadam on 18/02/23.
//

import SwiftUI

struct LighthouseDemos: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollViewReader { value in
                    
                    VStack(spacing: 20) {
                        Group {
                            SectionMainView(sectionTitle: "Lighthouse Demo", sectionTitleDescription: "SwiftUI examples") {
                                LighthouseExamplesMain()
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

struct LighthouseDemos_Previews: PreviewProvider {
    static var previews: some View {
        LighthouseDemos()
    }
}
