//
//  Basics_16_Sheets_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 30/12/22.
//

import SwiftUI

struct Basics_16_Sheets_Bootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
           
            VStack {
                Button(action: {
                    showSheet.toggle()
                }, label: {
                     Text("Click Me")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white.cornerRadius(10))
                })
                
                Section {
                    MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=ddr3E0l4gIQ&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=30", title: "Display pop-up Sheets and FullScreenCovers in SwiftUI | Bootcamp #28")
                        .foregroundColor(.white)
                        .padding()
                }
            }

        }
       // .sheet(isPresented: $showSheet) {
       //     SecondScreen()
       // }
        
        /** DO NOT & NEVER USE CONDITIONAL LOGIC IF-ELSE IN THE SHEET */
        .fullScreenCover(isPresented: $showSheet) {
            SecondScreen()
        }

    }
}

struct SecondScreen : View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
           
            VStack {
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
}

struct Basics_16_Sheets_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        // Basics_16_Sheets_Bootcamp()
        SecondScreen()
    }
}
