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
                            .font(.title)
                        Example_1_Main()
                    }
                    VStack(alignment: .leading, spacing: 10) {
                        Text("View layout")
                            .font(.title)
                        Example_2_Main()
                    }
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
