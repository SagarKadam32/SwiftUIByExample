//
//  FocusStateBootcampDemo.swift
//  iDine
//
//  Created by Sagar Kadam on 09/03/23.
//

import SwiftUI

struct FocusStateBootcampDemo: View {
    @FocusState private var userNameInFocus: Bool
    @State var userName: String = ""
    var body: some View {
        VStack {
            TextField("Enter some text here..", text: $userName)
                .focused($userNameInFocus)
                .padding(.leading)
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.25))
                .cornerRadius(10)
            
            Button("Toggle Focus State") {
                userNameInFocus.toggle()
            }
        }
        .padding(40)
        .onAppear(){
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.userNameInFocus = true
            }
        }
    }
}

struct FocusStateBootcampDemo_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcampDemo()
            .previewLayout(.sizeThatFits)
    }
}
