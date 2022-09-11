//
//  Example_3_3.swift
//  iDine
//
//  Created by Sagar Kadam on 10/09/22.
//

import SwiftUI

struct AdaptiveStack<Content: View>: View {
    @Environment(\.horizontalSizeClass) var sizeClass
    let horizontalAlignment: HorizontalAlignment
    let verticalAlignment: VerticalAlignment
    let spacing: CGFloat?
    let content: () -> Content
    
    init(horizontalAlignment: HorizontalAlignment = .center, verticalAlignment: VerticalAlignment = .center, spacing: CGFloat? = nil, @ViewBuilder content: @escaping() -> Content) {
        self.horizontalAlignment = horizontalAlignment
        self.verticalAlignment = verticalAlignment
        self.spacing = spacing
        self.content = content
    }
    
    var body: some View {
        Group {
            if sizeClass == .compact {
                VStack(alignment: horizontalAlignment, spacing: spacing, content: content)
            }else {
                HStack(alignment: verticalAlignment, spacing: spacing, content: content)
            }
        }
    }
}

struct Example_3_3: View {
    @Environment(\.horizontalSizeClass) var sizeClass
    
    
    var body: some View {
        VStack {
            Text("3.1 How to create different layouts using size classes")
                .font(.title)
            if sizeClass == .compact {
                Text("Compact")
            }else {
                Text("Regular")
            }
            
            Text("3.2 How to automatically switch between HStack and VStack based on size class")
                .font(.title)
            AdaptiveStack {
                Text("Horizontal when there is is lots of space")
                Text("but")
                Text("Vertical when space is restricted")
            }
        }

            

    }
}

struct Example_3_3_Previews: PreviewProvider {
    static var previews: some View {
        Example_3_3()
    }
}
