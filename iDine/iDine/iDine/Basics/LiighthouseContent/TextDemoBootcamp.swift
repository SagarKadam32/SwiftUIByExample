//
//  TextDemoBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 18/02/23.
//

import SwiftUI

struct TextDemoBootcamp: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("This is Text DEMO")
                .font(.body)
                .fontWeight(.semibold)
                .bold()
                .background(.green)
            
            Text("Text Example Underline and Strikethrough")
                .underline()
                .strikethrough()
                .background(.yellow)
            
            Text("Text Example Underline and Strikethrough")
                .underline()
                .underline(true, color: .red)
                .strikethrough()
                .strikethrough(true, color: .red)
                .background(.green)
            
            Text("Demo Example Baseline and Kerning")
                .font(.body)
                .fontWeight(.semibold)
                .baselineOffset(10)
                .kerning(10)
                .background(.yellow)
            
            Text("Demo Example System Font")
                .font(.system(size: 24, weight: .semibold, design: .serif))
                .background(.green)
            
            Text("This is the multiline Text. Its awesome and wonderful to learn and apply the SWIFT UI")
                .multilineTextAlignment(.leading)
                .foregroundColor(.blue)
                .frame(width: 400, height: 200, alignment: .leading)
                .minimumScaleFactor(0.1)
                .background(.yellow)
        }
        .padding()
    }
}

struct TextDemoBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextDemoBootcamp()
    }
}
