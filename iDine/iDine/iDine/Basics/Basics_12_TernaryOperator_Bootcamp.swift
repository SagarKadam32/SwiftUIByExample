//
//  Basics_12_TernaryOperator_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 28/12/22.
//

import SwiftUI

struct Basics_12_TernaryOperator_Bootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting STATE !!" : "Ending STATE.")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 200: 50,
                       height: isStartingState ? 400: 50)

            
            Spacer()
            
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=xzFSOdpxy-o&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=25", title: "How to use Ternary Operators in SwiftUI | Bootcamp #24")
            }
        }
    }
}

struct Basics_12_TernaryOperator_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_12_TernaryOperator_Bootcamp()
    }
}
