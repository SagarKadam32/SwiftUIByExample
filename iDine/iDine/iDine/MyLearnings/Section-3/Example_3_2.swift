//
//  Example_3_2.swift
//  iDine
//
//  Created by Sagar Kadam on 10/09/22.
//

import SwiftUI

struct Example_3_2: View {
    var body: some View {
        /*
        VStack {
            Text("First Label")
                .background(.yellow)

            Spacer(minLength: 50)
              //  .frame(height: 50)
            
            Text("Second Label")
                .background(.yellow)
           
        }
         */
        VStack{
            Text("How to make a fixed size Spacer")
            VStack {
                Text("First Label")
                    .background(.yellow)

                Spacer(minLength: 25)
                  //  .frame(height: 50)
                
                Text("Second Label")
                    .background(.yellow)
               
            }
            
            Text("How to adjust the position of a view using its offset")
            ZStack(alignment: .bottomTrailing) {
                Image("cheese-toastie")
                Text("Cheese Toastie")
                    .font(.caption)
                    .background(.black.opacity(0.2))
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)

            }
            Text("How to change the order of view layering using Z index")
            ZStack {
                Rectangle()
                    .fill(.green)
                    .frame(width: 50, height: 50)
                    .zIndex(1)

                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
            }
        }

    }
}

struct Example_3_2_Previews: PreviewProvider {
    static var previews: some View {
        Example_3_2()
    }
}
