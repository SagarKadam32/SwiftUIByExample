//
//  Basics_17_Popovers_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 30/12/22.
//

import SwiftUI

struct Basics_17_Popovers_Bootcamp: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack() {

            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Button("Click Me !!") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                
                Spacer()

                Section {
                    MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=5QDvfNQF304&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=30", title: "Using Sheets, Transitions, and Offsets to create a popover in SwiftUI | Bootcamp #29")
                        .foregroundColor(.white)
                }
            }
            // Method-1
            .sheet(isPresented: $showNewScreen) {
                NewScreen()
            }

        }
    }
}

struct NewScreen : View {
    //@Binding var showNewScreen: Bool
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

struct Basics_17_Popovers_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_17_Popovers_Bootcamp()
    }
}
