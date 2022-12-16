//
//  Basics_2_ForEach_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 16/12/22.
//

import SwiftUI

struct Basics_2_ForEach_Bootcamp: View {
    
    let data : [String] = ["Hi", "Hello", "Hey Everyone"]
    let myString: String = "Hello"
    var body: some View {
        VStack {

            ForEach(data.indices) { index in
                Text("\(data[index]) : \(index)")
                
            }
            
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=CKmsqRN-VM0&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=15", title: "How to use ForEach loops in SwiftUI | Bootcamp #14")
            }
        }    }
}

struct Basics_2_ForEach_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_2_ForEach_Bootcamp()
    }
}
