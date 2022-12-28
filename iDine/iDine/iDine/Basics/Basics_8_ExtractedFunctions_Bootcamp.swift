//
//  Basics_8_ExtractedFunctions_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 28/12/22.
//

import SwiftUI

struct Basics_8_ExtractedFunctions_Bootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text("Title")
                    .font(.largeTitle)
                
                Button(action: {
                    buttonPressed()
                }, label: {
                    Text("PRESS ME")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                })
                
                
                Section {
                    MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=pIUBC6wZjpM&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=23", title: "Extracting functions and subviews in SwiftUI | Bootcamp #20")
                        .foregroundColor(.white)
                        .padding()
                }
            }
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow

    }
}

struct Basics_8_ExtractedFunctions_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_8_ExtractedFunctions_Bootcamp()
    }
}
