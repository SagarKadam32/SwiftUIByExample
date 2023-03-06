//
//  ListSwipeActionsBootcampDemo.swift
//  iDine
//
//  Created by Sagar Kadam on 06/03/23.
//

import SwiftUI

struct ListSwipeActionsBootcampDemo: View {
    
    @State var fruits: [String] = ["apple", "orange", "peach"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(
                        edge: .leading, allowsFullSwipe: true, content: {
                            Button("Share") {
                                
                            }
                            .tint(.orange)
                        })
                    .swipeActions(
                        edge: .trailing, allowsFullSwipe: true, content: {
                            Button("Archive") {
                                
                            }
                            .tint(.blue)
                            Button("Save") {
                                
                            }
                            .tint(.green)
                            Button("Report") {
                                
                            }
                            .tint(.black)
                        })
            }
        }
    }
}

struct ListSwipeActionsBootcampDemo_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcampDemo()
    }
}
