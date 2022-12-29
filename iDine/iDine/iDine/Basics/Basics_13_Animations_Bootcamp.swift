//
//  Basics_13_Animations_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 29/12/22.
//

import SwiftUI

struct Basics_13_Animations_Bootcamp: View {
    
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {

            Button("Click Me") {
                withAnimation(.default) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees:  isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
            
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=0WY-wrW2_bs&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=26", title: "Adding Animations in SwiftUI | Bootcamp #25")
            }
        }
    }
}

struct Basics_13_Animations_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_13_Animations_Bootcamp()
    }
}
