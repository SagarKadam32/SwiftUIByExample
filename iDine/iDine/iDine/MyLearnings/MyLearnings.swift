//
//  MyLearnings.swift
//  iDine
//
//  Created by Sagar Kadam on 08/09/22.
//

import SwiftUI

struct SectionHeader : View {
    var sectionTitle = ""
    var sectionTitleDescription = ""

    var body: some View {
        VStack(spacing:0) {
            Text(sectionTitle)
                .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                .padding()
                .font(.title)
                .background(.mint)
            Text(sectionTitleDescription)
                .frame(maxWidth: .infinity, minHeight: 15, maxHeight: 25, alignment: .leading)
                .padding()
                .font(.headline.bold())
                .background(.yellow)
        }

    }
}

struct MyLearnings: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 10) {
                        SectionHeader(sectionTitle: "Working with static text", sectionTitleDescription: "Laying out text neatly")
                        Example_1_Main()
                            .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    Divider()
                    VStack(alignment: .leading, spacing: 10) {
                        SectionHeader(sectionTitle: "View layout", sectionTitleDescription: "Layout sizes, priorities, and spacing")
                        Example_2_Main()
                            .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    Divider()
                    VStack(alignment: .leading, spacing: 10) {
                        SectionHeader(sectionTitle: "Stacks, grids, scrollviews", sectionTitleDescription: "Position views in a structured way")
                        Example_3_Main()
                            .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    Divider()
                    VStack(alignment: .leading, spacing: 10) {
                        SectionHeader(sectionTitle: "User interface controls", sectionTitleDescription: "Respond to interaction and control your program state")
                        Example_3_Main()
                            .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    Divider()

                }
                .padding()
            }
            .navigationTitle("My Learning")
        }
    }
}

struct MyLearnings_Previews: PreviewProvider {
    static var previews: some View {
        MyLearnings()
    }
}
