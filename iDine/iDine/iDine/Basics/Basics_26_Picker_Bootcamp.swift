//
//  Basics_26_Picker_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 14/02/23.
//

import SwiftUI

struct Basics_26_Picker_Bootcamp: View {
    
    @State var mySelection: String = "1"
    var body: some View {
        
        VStack {
            HStack {
                Text("Age:")
                Text(mySelection)
            }
            
            Picker(
                selection: $mySelection,
                label: Text("Picker"),
                   content: {
                       ForEach(18..<100, content: { number in
                            Text("\(number)")
                               .font(.headline)
                               .foregroundColor(.red)
                               .tag("\(number)")
                       })
                       .pickerStyle(WheelPickerStyle())
            })
        }
    }
}

struct Basics_26_Picker_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_26_Picker_Bootcamp()
    }
}
