//
//  Basics_34_IfLetGuard_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 16/02/23.
//

import SwiftUI

struct Basics_34_IfLetGuard_Bootcamp: View {
    
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                
                if let text = displayText {
                    Text(text)
                        .font(.title )
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .onAppear() {
                loadData()
            }
            .navigationTitle("Safe Codeing")
        }
    }
    
    func loadData() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data!"
            isLoading = false
        }
    }
}

struct Basics_34_IfLetGuard_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_34_IfLetGuard_Bootcamp(displayText: "")
    }
}
