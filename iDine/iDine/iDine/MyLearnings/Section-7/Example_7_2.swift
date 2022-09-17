//
//  Example_7_2.swift
//  iDine
//
//  Created by Sagar Kadam on 17/09/22.
//

import SwiftUI

class UserProgress: ObservableObject {
    @Published var score = 0
}

struct InnterView : View {
    @ObservedObject var progress : UserProgress
    
    var body: some View {
        Button("Increase score") {
            progress.score += 1
        }
    }
}

struct Example_7_2: View {
    @StateObject var progress = UserProgress()
    
    var body: some View {
        VStack {


            Text("Your score is \(progress.score)")
            InnterView(progress: progress)
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-observedobject-to-manage-state-from-external-objects", title: "@ObservedObject to manage state from external objects")
        }
       
        .padding()
    }
}

struct Example_7_2_Previews: PreviewProvider {
    static var previews: some View {
        Example_7_2()
    }
}
