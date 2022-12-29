//
//  Basics_14_AnimationCurvesAndTimings_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 29/12/22.
//

import SwiftUI

struct Basics_14_AnimationCurvesAndTimings_Bootcamp: View {
    
    @State var isAnimating: Bool = false
    @State private var timing: Double = 0.0
    
    var body: some View {

        VStack {

            Button("Try Animations !") {
                isAnimating.toggle()
                self.timing += 10.0
            }
            
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.linear, value: timing)

            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeIn, value: timing)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeInOut, value: timing)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeOut, value: timing)
            
            
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=0H4G3lGnJE0&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=27", title: "Animation Curves and Animation Timing in SwiftUI | Bootcamp #26")
            }
        }
        
        
    }
}

struct Basics_14_AnimationCurvesAndTimings_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_14_AnimationCurvesAndTimings_Bootcamp()
    }
}
