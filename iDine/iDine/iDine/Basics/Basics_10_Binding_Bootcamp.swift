//
//  Basics_9_Binding_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 28/12/22.
//

import SwiftUI

struct Basics_10_Binding_Bootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State var title: String = "Title"
    @State var buttonTitle1: String = "Reset"
    @State var buttonTitle2: String = "Try Me !"

    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text(title)
                ButtonView(backgroundColor: $backgroundColor, title: $title, buttonTitle: $buttonTitle1)
                ButtonView(backgroundColor: $backgroundColor, title: $title, buttonTitle: $buttonTitle2)
                
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

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @Binding var title: String
    @Binding var buttonTitle: String
    @State var buttonColor: Color = .blue
    
    var body: some View {
        VStack {
            Button(action: {
                backgroundColor = .orange
                buttonColor = .pink
                title = "New Title !!!!!!!"
                
                if buttonTitle == "Reset" {
                    backgroundColor = .green
                    buttonColor = .blue
                    title = "Old Title"
                }
            }, label: {
                Text(buttonTitle)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(buttonColor)
                    .cornerRadius(10)
            })
        }
    }
}
