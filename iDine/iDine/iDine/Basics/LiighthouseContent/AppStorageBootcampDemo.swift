//
//  AppStorageBootcampDemo.swift
//  iDine
//
//  Created by Sagar Kadam on 22/02/23.
//

import SwiftUI

struct AppStorageBootcampDemo: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(currentUserName ?? "Default Name")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Shravani Sagar"
                currentUserName = name
            }
        }
    }
}

struct AppStorageBootcampDemo_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcampDemo()
    }
}
