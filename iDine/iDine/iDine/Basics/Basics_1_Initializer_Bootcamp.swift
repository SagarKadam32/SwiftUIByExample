//
//  Basics_1_Initializer_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 16/12/22.
//

import SwiftUI

struct Basics_1_Initializer_Bootcamp: View {
    
    let backgroundColor : Color
    let count : Int
    let title : String
    
    init(count: Int, fruit : Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title  = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
        
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack {
            VStack(spacing: 12) {
                Text("\(count)")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .underline()
                
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
                

            }
            .frame(width: 150, height: 150)
            .background(backgroundColor)
            .cornerRadius(10)
            
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=su0KLQq0JM0&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=14", title: "How to use inits and enums in SwiftUI | Bootcamp #13")
            }
        }
    }
}

struct Basics_1_Initializer_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Basics_1_Initializer_Bootcamp(count: 15, fruit: .apple)
            Basics_1_Initializer_Bootcamp(count: 42, fruit: .orange)

        }
    }
}
