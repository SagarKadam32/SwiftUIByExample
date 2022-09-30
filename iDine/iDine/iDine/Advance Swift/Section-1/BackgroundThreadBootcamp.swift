//
//  BackgroundThreadBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 30/09/22.
//

import SwiftUI

class BackgroundThreadViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    func fetchData() {
        let newData = downloadData()
        dataArray = newData
    }
    
    func downloadData() -> [String] {
        var data: [String] = []
        
        for x in 0..<100 {
            data.append("\(x)")
            print(data)
        }
        return data
    }
}

struct BackgroundThreadBootcamp: View {
    
    @StateObject var vm = BackgroundThreadViewModel()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("Load Data")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .onTapGesture {
                        vm.fetchData()
                    }
                Text("Click to Load Data")
                
                ForEach(vm.dataArray, id:\.self) { item in
                    Text(item)
                        .font(.headline)
                        .foregroundColor(.red)
                }
            }
            
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=jEpg2SYvVV8&list=PLwvDm4VfkdpiagxAXCT33Rkwnc5IVhTar&index=18", title: "Background Theads/Queus")
            }
        }

    }
}

struct BackgroundThreadBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundThreadBootcamp()
    }
}
