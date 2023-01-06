//
//  Basics_20_Alerts_Bootcamp.swift
//  iDine
//
//  Created by Capgemini-DA073 on 1/6/23.
//

import SwiftUI

struct Basics_20_Alerts_Bootcamp: View {
    
    @State var showAlert: Bool = false
    var body: some View {
        Button("Click Me!!") {
            showAlert.toggle()
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("There was an error!"))
        }

    }
}

struct Basics_20_Alerts_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_20_Alerts_Bootcamp()
    }
}
