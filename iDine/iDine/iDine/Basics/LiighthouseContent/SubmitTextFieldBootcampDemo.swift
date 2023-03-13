//
//  SubmitTextFieldBootcampDemo.swift
//  iDine
//
//  Created by Sagar Kadam on 13/03/23.
//

import SwiftUI

struct SubmitTextFieldBootcampDemo: View {
    @State private var inputText: String = ""
    var body: some View {
        VStack {
            
            TextField("Search Action..", text: $inputText)
                .submitLabel(.search)
                .onSubmit {
                    print("On click of Search this line will get printed...")
                }
            
            TextField("Done Action..", text: $inputText)
                .submitLabel(.done)
                .onSubmit {
                    print("On click of Done this line will get printed...")
                }
            
            TextField("Route Action..", text: $inputText)
                .submitLabel(.route)
                .onSubmit {
                    print("On click of Route this line will get printed...")
                }
            
            TextField("Next Action..", text: $inputText)
                .submitLabel(.next)
                .onSubmit {
                    print("On click of Next this line will get printed...")
                }
        }
        .padding()
    }
}

struct SubmitTextFieldBootcampDemo_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootcampDemo()
    }
}
