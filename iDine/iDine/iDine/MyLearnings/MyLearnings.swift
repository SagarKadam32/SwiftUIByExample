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
            ScrollView {
                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Working with static text")
                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                            .padding()
                            .font(.title)
                            .background(.mint)
                        Example_1_Main()
                            .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    Divider()
                    VStack(alignment: .leading, spacing: 10) {
                        Text("View layout")
                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                            .padding()
                            .font(.title)
                            .background(.mint)
                        Example_2_Main()
                            .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    Divider()
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Stacks, grids, scrollviews")
                            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .leading)
                            .padding()
                            .font(.title)
                            .background(.mint)
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
