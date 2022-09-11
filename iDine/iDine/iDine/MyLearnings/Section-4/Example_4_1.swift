//
//  Example_4_1.swift
//  iDine
//
//  Created by Sagar Kadam on 11/09/22.
//

import SwiftUI

struct Example_4_1: View {
    @State private var showDetails = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Group {
                    Text("4.1 How to create a tappable button")
                        .font(.title)
                        .fontWeight(.black)
                    Button("Show Details") {
                        showDetails.toggle()
                    }
                    
                    if showDetails {
                        Text("I am mastering Swift UI..")
                            .font(.largeTitle)
                    }
                    
                    Button {
                        print("Image Tapped")
                        showDetails.toggle()
                    } label: {
                        Image("mexican-mocha-thumb")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height:200)
                    }
                    
                    Button {
                        print("Button pressed")
                    } label : {
                        Text("Press Me")
                            .padding(20)
                    }
                    .contentShape(Rectangle())
                    
                    Button("Delete", role: .destructive) {
                        print("Perform Delete")
                    }
                    .padding(20)

                    
                    Button("Cancel", role: .cancel) {
                        print("Perform Cancel")
                    }
                    .padding(20)
                    
                    Divider()
                    Divider()
                }
                
                Group {
                    Text("4.2 How to disable the overlay color for images inside Button and NavigationLink")
                        .font(.title)
                        .fontWeight(.black)
                    
               
                        NavigationLink(destination: Text("Detail view here")) {
                            Image("all-out-donuts")
                                .renderingMode(.original)
                        }
                    
                        NavigationLink(destination: Text("Detail view here")) {
                            Image("all-out-donuts")
                            
                        }
                        .buttonStyle(.plain)
                    
                        Button {
                            
                        } label : {
                            Image("all-out-donuts")
                        }
                        .buttonStyle(.plain)
                   
                }


            }
            .padding()
        }
    }
}

struct Example_4_1_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_1()
    }
}
