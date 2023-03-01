//
//  Basics_35_TapGesture_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 17/02/23.
//

import SwiftUI

struct Basics_35_TapGesture_Bootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        
        VStack(spacing: 10) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
                
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .background(Color.blue)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(25)
            })
            
            Text("TAP GESTURE 1")
                .font(.headline)
                .background(Color.blue)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(25)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            Text("TAP GESTURE 2")
                .font(.headline)
                .background(Color.blue)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(25)
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
            Spacer()
        }
        .padding(.horizontal, 50)
    }
}

struct Basics_35_TapGesture_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_35_TapGesture_Bootcamp()
    }
}
