//
//  Basics_3_ScrollView_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 17/12/22.
//

import SwiftUI

struct Basics_3_ScrollView_Bootcamp: View {
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack {
                    ForEach(0..<10) { index in
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            LazyHStack {
                                ForEach(0..<20) { index in
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .fill(Color.white)
                                        .frame(width: 200, height: 150)
                                        .shadow(radius: 10)
                                        .padding()
                                    
                                }
                            }
                        })
                        
                    }
                }
            }

            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=9QhhpeYKjOs&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=19", title: "Implementing a ScrollView in SwiftUI | Bootcamp #15")
            }
        }
    }
}

struct Basics_3_ScrollView_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_3_ScrollView_Bootcamp()
    }
}
