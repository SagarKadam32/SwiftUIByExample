//
//  Basics_25_Toggle_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 14/02/23.
//

import SwiftUI

struct Basics_25_Toggle_Bootcamp: View {
    
    @State var isToggleOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Swich Status:")
                Text(isToggleOn ? "Online": "Offline")
            }
            Toggle(isOn: $isToggleOn,
                   label: {
                    Text("Change Status")
            })
            .toggleStyle(SwitchToggleStyle(tint: .green))
            
            Spacer()
        }
        .padding(.horizontal, 100)

        
    }
}

struct Basics_25_Toggle_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_25_Toggle_Bootcamp()
    }
}
