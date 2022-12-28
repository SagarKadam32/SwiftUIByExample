//
//  Basics_9_Binding_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 28/12/22.
//

import SwiftUI

struct Basics_10_Binding_Bootcamp: View {
    
    @State var backgroundColor: Color = .green
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Button(action: {
                    backgroundColor = .orange
                }, label: {
                    Text("Button")
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(.blue)
                        .cornerRadius(10)
                })
                
                
                Section {
                    MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=btDMzB5x2Gs&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=23", title: "How to use @Binding property wrapper in SwiftUI | Bootcamp #22")
                }
                .foregroundColor(.white)
            }
            

        }
    }
}

struct Basics_10_Binding_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_10_Binding_Bootcamp()
    }
}
