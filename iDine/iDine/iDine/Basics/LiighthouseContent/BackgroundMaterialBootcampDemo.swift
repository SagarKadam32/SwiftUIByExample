//
//  BackgroundMaterialBootcampDemo.swift
//  iDine
//
//  Created by Sagar Kadam on 28/02/23.
//

import SwiftUI

struct BackgroundMaterialBootcampDemo: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack{
               RoundedRectangle(cornerRadius: 4)
                    .frame(width:50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height:350)
            .frame(maxWidth:.infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        
        }
        .ignoresSafeArea()
        .background(
            Image("tomCruise")
                .resizable()
                .scaledToFill()
        )
    }
}

struct BackgroundMaterialBootcampDemo_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialBootcampDemo()
    }
}
