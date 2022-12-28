//
//  Basics_11_Conditional_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 28/12/22.
//

import SwiftUI

struct Basics_11_Conditional_Bootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            Button("Rectangle Button : \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            } else if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            } else {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 200, height: 200)
            }
            
            Spacer()
            
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=su0KLQq0JM0&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=14", title: "How to use inits and enums in SwiftUI | Bootcamp #13")
            }
        }
    }
}

struct Basics_11_Conditional_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_11_Conditional_Bootcamp()
    }
}
