//
//  Basics_20_Alerts_Bootcamp.swift
//  iDine
//
//  Created by Capgemini-DA073 on 1/6/23.
//

import SwiftUI

struct Basics_20_Alerts_Bootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = .yellow
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            Button("Click Me!!") {
                showAlert.toggle()
            }
            .font(.largeTitle)
            .foregroundColor(.white)
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Alert Title"),
                    message: Text("This is optional error message"),
                    primaryButton: .destructive(Text("Delete"), action: {
                        // Delete Action
                        backgroundColor = .red
                    }),
                    secondaryButton: .cancel(Text("Reset"), action: {
                        backgroundColor = .yellow
                    }))
                //Alert(title: Text("There was an error!"))
        }
        }

    }
}

struct Basics_20_Alerts_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_20_Alerts_Bootcamp()
    }
}
