//
//  Example_1_3.swift
//  iDine
//
//  Created by Sagar Kadam on 08/09/22.
//

import SwiftUI

struct Example_1_3: View {
    let alignments: [TextAlignment] = [.leading, .center, .trailing]
    @State private var alignment = TextAlignment.leading
    var body: some View {
        NavigationView {
            VStack(spacing:10) {
                Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .frame(width:300)
                
                Picker("Text alignment", selection: $alignment) {
                    ForEach(alignments, id: \.self) { alignment in
                        Text(String(describing: alignment))
                    }
                }
                
                Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                    .font(.largeTitle)
                    .multilineTextAlignment(alignment)
                    .frame(width: 300)
                  

            }
            .navigationTitle("3. How to adjust text alignment using multilineTextAlignment()")
            .navigationBarTitleDisplayMode(.inline)
        }    }
}

struct Example_1_3_Previews: PreviewProvider {
    static var previews: some View {
        Example_1_3()
    }
}
