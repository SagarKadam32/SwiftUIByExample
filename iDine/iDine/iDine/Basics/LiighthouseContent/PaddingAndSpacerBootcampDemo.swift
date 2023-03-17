//
//  PaddingAndSpacerBootcampDemo.swift
//  iDine
//
//  Created by Sagar Kadam on 17/03/23.
//

import SwiftUI

struct PaddingAndSpacerBootcampDemo: View {
    var body: some View {
        
        Text("Sample Text")
            .background(.yellow)
            .padding(.all,10)
            .padding(.leading, 20)
            .background(.green)
         
        /*
        VStack(alignment: .leading) {
            Text("Times of India")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Text("This is the first news content that we are trying to display with help of the padding modifier. It is supercool to use the padding to add space around the object edges.")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.blue.opacity(0.3),
                    radius: 10, x: 0.0, y: 10)
        ).padding(.horizontal, 10)
        */
        
    }
}

struct PaddingAndSpacerBootcampDemo_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcampDemo()
    }
}
