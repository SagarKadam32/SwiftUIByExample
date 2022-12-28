//
//  Basics_11_Conditional_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 28/12/22.
//

import SwiftUI

struct Basics_11_Conditional_Bootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = true
    @State var shouldHideLoadingView: Bool = false
    var body: some View {
        VStack(spacing: 20){
            
            Button("Click here to stop progressview & start..") {
                isLoading.toggle()
                shouldHideLoadingView.toggle()
            }.opacity(shouldHideLoadingView ? 0 : 1)
            
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            Button("Rectangle Button : \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            if isLoading {
                LoadingView(shouldHideLoadingView: $shouldHideLoadingView, isLoading: $isLoading)

                ProgressView()
            } else {

                
                if showCircle {
                    Circle()
                        .frame(width: 100, height: 100)
                }
                
                if showRectangle {
                    Rectangle()
                        .frame(width: 100, height: 100)
                }
                
                
                if showCircle && showRectangle {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 200, height: 200)
                }else if(!showCircle && !showRectangle) {
                    LoadingView(shouldHideLoadingView: $shouldHideLoadingView, isLoading: $isLoading)
                        .onAppear(){
                            shouldHideLoadingView = false
                            isLoading = true
                        }
                }
            }
            

            
            Spacer()
            
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=W8sGT16WAkQ&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=24", title: "How to use if-else and conditional statements in SwiftUI | Bootcamp #23")
            }
        }
    }
}

struct Basics_11_Conditional_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_11_Conditional_Bootcamp()
    }
}

struct LoadingView: View {
    @Binding var shouldHideLoadingView: Bool
    @Binding var isLoading: Bool
    var body: some View {
        Button("Click here to stop progressview & start..") {
            isLoading.toggle()
            shouldHideLoadingView.toggle()
        }.opacity(shouldHideLoadingView ? 0 : 1)
    }
}
