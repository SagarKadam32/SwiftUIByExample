//
//  EscapingBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 30/09/22.
//

import SwiftUI

class EscaptingViewMoel: ObservableObject {
    
    @Published var text: String = "Hello"
    
    func getData() {
        // Basic Syncrhonous Call
        /*
        let newData = downloadData()
        text = newData
        */
        
        let newData = downloadData2()
        text = newData
    }
    
    func downloadData() -> String {
        return "New Data!"
    }
    
    func downloadData2() -> String {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            return "New Data!"
        }
    }
}

struct EscapingBootcamp: View {
    
    @StateObject var vm = EscaptingViewMoel()
    
    var body: some View {
        VStack {
            Text(vm.text)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.blue)
                .onTapGesture {
                    vm.getData()
                }
            
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=7gg8iBH2fg4&list=PLwvDm4VfkdpiagxAXCT33Rkwnc5IVhTar&index=21", title: "How to use escaping closures in Swift ")
            }
        }
    }
}

struct EscapingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EscapingBootcamp()
    }
}
