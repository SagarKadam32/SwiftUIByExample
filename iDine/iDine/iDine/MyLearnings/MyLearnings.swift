//
//  MyLearnings.swift
//  iDine
//
//  Created by Sagar Kadam on 08/09/22.
//

import SwiftUI

struct SectionHeader : View {
    var sectionTitle = ""
    var body: some View {
        Text(sectionTitle)
            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
            .padding()
            .font(.title)
            .background(.mint)
    }
}

struct MyLearnings: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 10) {
                        SectionHeader(sectionTitle: "Working with static text")
                        Example_1_Main()
                            .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    Divider()
                    VStack(alignment: .leading, spacing: 10) {
                        SectionHeader(sectionTitle: "View layout")
                        Example_2_Main()
                            .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    Divider()
                    VStack(alignment: .leading, spacing: 10) {
                        SectionHeader(sectionTitle: "Stacks, grids, scrollviews")
                        Example_3_Main()
                            .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    Divider()
                    VStack(alignment: .leading, spacing: 10) {
                        SectionHeader(sectionTitle: "Stacks, grids, scrollviews")
                        Example_3_Main()
                            .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    Divider()
                    VStack(alignment: .leading, spacing: 10) {
                        SectionHeader(sectionTitle: "User interface controls")
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
