//
//  Basics_6_Button_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 21/12/22.
//

import SwiftUI

struct Basics_6_Button_Bootcamp: View {
    @State var title = "This is title"
    
    var body: some View {
        VStack(spacing:40) {
            Text(title)
            
            Button("Press me!") {
                self.title = "Button-1 Pressed!!"
            }
            .accentColor(.green)
            
            Button(action: {
                self.title = "Button-2 Pressed!!"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            
            
            Button(action: {
                self.title = "Button-3 Pressed!!"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                    )
                
            })
            
            
            Button(action: {
                self.title = "Button-4 Pressed!!"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray,lineWidth: 2.0)
                    )
            })
            



            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=mWcl2aCalBQ&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=23", title: "How to add Buttons to SwiftUI application | Bootcamp #18")
            }
        }
    }
}

struct Basics_6_Button_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_6_Button_Bootcamp()
    }
}
