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
                Text("1").tag("1")
                Text("2").tag("2")
                Text("3").tag("3")
                Text("4").tag("4")
                Text("5").tag("5")
            })
        }
    }
}

struct Basics_26_Picker_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_26_Picker_Bootcamp()
    }
}
