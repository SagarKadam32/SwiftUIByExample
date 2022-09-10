//
//  Example_2_9.swift
//  iDine
//
//  Created by Sagar Kadam on 10/09/22.
//

import SwiftUI

struct Example_2_9: View {
    var body: some View {
        VStack{
            
            HStack {
                Image(systemName: "clock.fill")
                Text("Set the time")
            }
            .font(.largeTitle)
            .foregroundStyle(.quaternary)
            
            HStack {
                Image(systemName: "clock.fill")
                Text("Set the time")
            }
            .font(.largeTitle)
            .foregroundStyle(
                .linearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottom)
            
            )
            
        }
    }
}

struct Example_2_9_Previews: PreviewProvider {
    static var previews: some View {
        Example_2_9()
    }
}
