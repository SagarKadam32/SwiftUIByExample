//
//  Adv_Example_1_2.swift
//  iDine
//
//  Created by Sagar Kadam on 25/09/22.
//

import SwiftUI

struct HeaderViewRegular: View {
    let title: String
    let description: String?
    let iconName: String?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
            if let description = description {
                Text(description)
                    .font(.callout)
            }
            if let iconName = iconName {
                Image(systemName: iconName)
            }
            RoundedRectangle(cornerRadius: 5)
                .frame(height:2)
        }
    }
}

struct Adv_Example_1_2: View {
    var body: some View {
        VStack {
            HeaderViewRegular(title: "Regular Title", description: "This is regular title", iconName: "heart.fill")
            
            HeaderViewRegular(title: "Another Title", description: "Title2", iconName: "pencil")
            
            HeaderViewRegular(title: "Another Title 1", description: nil, iconName: nil)
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct Adv_Example_1_2_Previews: PreviewProvider {
    static var previews: some View {
        Adv_Example_1_2()
    }
}
