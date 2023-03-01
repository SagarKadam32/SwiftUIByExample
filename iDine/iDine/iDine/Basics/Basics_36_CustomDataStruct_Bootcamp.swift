//
//  Basics_36_CustomDataStruct_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 17/02/23.
//

import SwiftUI

struct UserModel : Identifiable{
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct Basics_36_CustomDataStruct_Bootcamp: View {
    
    @State var users: [UserModel] =
    
    // ["Sagar", "Khalil", "Ranjeet", "Ganesh"]
    
    [
        UserModel(displayName: "Amar", userName: "Max", followerCount: 100, isVerified: true),
        UserModel(displayName: "Akabar", userName: "JnJ", followerCount: 78, isVerified: false),
        UserModel(displayName: "Anthony", userName: "Boxer", followerCount: 90, isVerified: true)
    ]
    var body: some View {
        
        NavigationView {
            List {
                
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)

                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                            
                            
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
                
                /*
                ForEach( users, id: \.self) { name in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        Text(name)
                    }
                    .padding(.vertical, 10)
                } */
                
                
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct Basics_36_CustomDataStruct_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_36_CustomDataStruct_Bootcamp()
    }
}
