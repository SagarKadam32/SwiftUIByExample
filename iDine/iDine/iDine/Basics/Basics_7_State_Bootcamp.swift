//
//  Basics_7_State_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 27/12/22.
//

import SwiftUI

struct Basics_7_State_Bootcamp: View {
    @State var backgroundColor: Color = Color.green
    @State var myTitle : String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10) {
                Text(myTitle)
                    .font(.title)
                Text("Count : \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .orange
                        myTitle = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .teal
                        myTitle = "Button 2 was pressed"
                        count -= 1

                        
                    }
                }
                .foregroundColor(.white)
                
                Section {
                    MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=LgJ9r_VWdSI&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO", title: "How to use @State property wrapper in SwiftUI | Bootcamp #19")
                }
            }
        }

        
    }
}

struct Basics_7_State_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_7_State_Bootcamp()
    }
}
