//
//  AsyncImageBootcampDemo.swift
//  iDine
//
//  Created by Sagar Kadam on 27/02/23.
//

import SwiftUI

struct AsyncImageBootcampDemo: View {
    let url1 = URL(string: "https://picsum.photos/200")
    let url2 = URL(string: "https://picsum.photos/400")
    var body: some View {
        
        VStack {
            Text("AsyncImage Basic")
            AsyncImage(url: url1)
            
            Divider()
                .frame(height: 5)
                .frame(maxWidth: .infinity)
            
            Text("AsyncImage Re-Sizing")
            AsyncImage(url: url2) { returnedImage in
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            } placeholder: {
                ProgressView()
            }
            
            Divider()
                .frame(height: 5)
                .frame(maxWidth: .infinity)
            
            Text("AsyncImage Phase")
            AsyncImage(url: url2) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                    
                case .success(let returnedImage):
                    returnedImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20)
                    
                case .failure(let error):
                    Image(systemName: "questionmark")
                        .font(.headline)
                default:
                    Image(systemName: "questionmark")
                        .font(.headline)
                }
            }
            Spacer()
        }
        

    }
}

struct AsyncImageBootcampDemo_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcampDemo()
    }
}
