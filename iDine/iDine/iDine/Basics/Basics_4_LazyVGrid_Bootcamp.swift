//
//  Basics_4_LazyVGrid_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 17/12/22.
//

import SwiftUI

struct Basics_4_LazyVGrid_Bootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    
    ]
    
    var body: some View {
        VStack {
            ScrollView {
                
                Rectangle()
                    .fill(Color.orange)
                    .frame(height: 400)
                
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 6,
                    pinnedViews: [.sectionHeaders],
                    content: {
                        Section(header:
                                    Text("Section 1")
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .background(Color.blue)
                                        .padding()
                        ) {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .frame(height: 150)
                                
                            }
                            
                        }
                        
                        Section(header:
                                    Text("Section 2")
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .background(Color.red)
                                        .padding()
                        ) {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .fill(Color.green)
                                    .frame(height: 150)
                                
                            }
                            
                        }
                    
                })

            }

            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=vHvb7LH8VuE&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=17", title: "LazyVGrid, LazyHGrid, and GridItems in SwiftUI | Bootcamp #16")
            }
        }
        .padding()
    }
}

struct Basics_4_LazyVGrid_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_4_LazyVGrid_Bootcamp()
    }
}
