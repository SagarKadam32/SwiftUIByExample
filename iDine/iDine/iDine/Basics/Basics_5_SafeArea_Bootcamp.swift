//
//  Basics_5_SafeArea_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 17/12/22.
//

import SwiftUI

struct Basics_5_SafeArea_Bootcamp: View {
    var body: some View {
        ZStack {
            
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    Text("Title goes here")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                        
                    }
                }
            }
            .padding()
            
        }
        


        
        /*
        ZStack {
            // background
            Color.teal
                .edgesIgnoringSafeArea(.all)
            
            // foreground
            VStack {
                Text("Hello, World!")
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
          // .background(Color.red)


            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=_0NDKxvfg40&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=18", title: "How to use and ignore the Safe Area in SwiftUI | Bootcamp #17")
                    .foregroundColor(.white)
            }
        }
        .padding()
         */
        
        
    }
}

struct Basics_5_SafeArea_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_5_SafeArea_Bootcamp()
    }
}
