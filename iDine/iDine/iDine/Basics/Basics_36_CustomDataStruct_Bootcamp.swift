//
//  Basics_36_CustomDataStruct_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 17/02/23.
//

import SwiftUI

struct Basics_36_CustomDataStruct_Bootcamp: View {
    
    @State var users: [String] = ["Sagar", "Khalil", "Ranjeet", "Ganesh"]
    var body: some View {
        
        NavigationView {
            List {
                ForEach( users, id: \.self) { name in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        Text(name)
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct Basics_36_CustomDataStruct_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_36_CustomDataStruct_Bootcamp()
    }
}
