//
//  Example_2_3.swift
//  iDine
//
//  Created by Sagar Kadam on 09/09/22.
//

import SwiftUI

struct Example_2_3: View {
    var body: some View {

        GeometryReader { geometry in
            HStack(spacing:0) {
                Text("Left")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .frame(width: geometry.size.width * 0.33)
                    .background(.yellow)
                
                Text("Right")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .frame(width: geometry.size.width * 0.67)
                    .background(.orange)
            }
            
        }
        .frame(height: 50)
        .padding()
    }
}

struct Example_2_3_Previews: PreviewProvider {
    static var previews: some View {
        Example_2_3()
    }
}
