//
//  Basics_15_Transition_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 29/12/22.
//

import SwiftUI

struct Basics_15_Transition_Bootcamp: View {
    
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {

            VStack {
            
                Button("Click Me!") {
                    showView.toggle()
                }
                Spacer()
                
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showView ? 1.0 : 0.0)
                    .animation(.easeInOut, value: 10.0)
                
                Section {
                    MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=X6FAIa0nJoA&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=28", title: "How to use inits and enums in SwiftUI | Bootcamp #13")
                }
                
            }
            
            
        }
        
    }
}

struct Basics_15_Transition_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_15_Transition_Bootcamp()
    }
}
