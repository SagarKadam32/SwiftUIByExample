//
//  ItemDetail.swift
//  iDine
//
//  Created by Sagar Kadam on 07/09/22.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    var body: some View {
        
        VStack {
            Image(item.mainImage)
            Text(item.description)
                .padding()
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example)
        }
    }
}
