//
//  Basics_34_IfLetGuard_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 16/02/23.
//

import SwiftUI

struct Basics_34_IfLetGuard_Bootcamp: View {
    
    @State var displayText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                Text(displayText)
                    .font(.title )
                Spacer()
            }
            .onAppear() {
                loadData()
            }
            .navigationTitle("Safe Codeing")
        }
    }
    
    func loadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data!"
        }
    }
}

struct Basics_34_IfLetGuard_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_34_IfLetGuard_Bootcamp()
    }
}
