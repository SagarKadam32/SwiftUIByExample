//
//  Basics_27_ColorPicker_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 14/02/23.
//

import SwiftUI

struct Basics_27_ColorPicker_Bootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

struct Basics_27_ColorPicker_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_27_ColorPicker_Bootcamp()
    }
}
