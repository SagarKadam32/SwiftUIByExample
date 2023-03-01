//
//  IconBootcampDemo.swift
//  iDine
//
//  Created by Sagar Kadam on 19/02/23.
//

import SwiftUI

struct IconBootcampDemo: View {
    var body: some View {
        
        VStack {
            VStack {
                Text("Image Icon 1")
                    .bold()
                Image(systemName: "heart.fill")
                    .resizable()
                    .font(.caption)
                    .frame(width: 50, height: 50)
                
                Text("Image Icon 2 - Scaled to FILL")
                    .bold()
                Image(systemName: "heart.fill")
                    .resizable()
                    .scaledToFill()
                    .font(.caption)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.red)
                
                Text("Image Icon 3 - Scaled to FIT")
                    .bold()
                Image(systemName: "heart.fill")
                    .resizable()
                    .scaledToFit()
                    .font(.caption)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
                
                Text("Image Icon 4 with System Font Size")
                    .bold()
                Image(systemName: "heart.fill")
                    .font(.system(size: 100))
                    .foregroundColor(.green)
            }

            VStack {
                Text("Image Icon 5 - Multicolor Original Mode")
                    .bold()
                Image(systemName: "person.fill.badge.plus")
                    .renderingMode(.original)
                    .font(.largeTitle)
                    .foregroundColor(.red)
                
                Text("Image Icon 6 - Multicolor Template Mode")
                    .bold()
                Image(systemName: "person.fill.badge.plus")
                    .renderingMode(.template)
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }
            Spacer()
         }
    }
}

struct IconBootcampDemo_Previews: PreviewProvider {
    static var previews: some View {
        IconBootcampDemo()
    }
}
