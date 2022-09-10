//
//  Example_2_8.swift
//  iDine
//
//  Created by Sagar Kadam on 10/09/22.
//

import SwiftUI

struct Example_2_8: View {
    var body: some View {
         ScrollView {
             VStack(spacing: 10) {
              
                     
                 HStack {
                     Text("This is short string")
                         .padding()
                         .frame(maxHeight: .infinity)
                         .background(.red)
                     
                     Text("This is a very long string with lots and lots of text that will definitely run across multiple lines because it's just so long.")
                         .padding()
                         .frame(maxHeight: .infinity)
                         .background(.green)
                 }
                 .fixedSize(horizontal: false, vertical: true)
                 .frame(height: 200)
                     
                
                 
                 VStack {
                     Button("Log in") {}
                         .foregroundColor(.white)
                         .padding()
                         .frame(maxWidth: .infinity)
                         .background(.red)
                         .clipShape(Capsule())
                     
                     Button("Reset Password") {}
                         .foregroundColor(.white)
                         .padding()
                         .frame(maxWidth: .infinity)
                         .background(.red)
                         .clipShape(Capsule())
                 }
                 .fixedSize(horizontal: true, vertical: false)
              }
         }
    }
}

struct Example_2_8_Previews: PreviewProvider {
    static var previews: some View {
        Example_2_8()
    }
}
