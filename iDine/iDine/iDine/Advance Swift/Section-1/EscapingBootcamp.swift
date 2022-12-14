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
        // Basic Synchronous Closure call
        /*
        downloadData2 { (returnedData) in
            text = returnedData
        }
        */
        
        // Escaping Closure
        /*
        downloadData3 { [weak self] data in
            self?.text = data
        }
        */
        
        // Update with the model for the closure params
        /*
        downloadData4 { [weak self] (returnedResult) in
            self?.text = returnedResult.data
        }
        */
        
        // Using the typealias
        downloadData5 { [weak self] (returnedResult) in
            self?.text = returnedResult.data
        }
        
        
        doSomething(forData: "Internal is diff than the external name")
        doSomething1(data: "Intername and external name is same for function")
        doSomething2("External name is stashed and internal not exposed")
    }
    
    func downloadData() -> String {
        return "New Data!"
    }
    
    func downloadData2(completionHandler: (_ data: String) -> Void){
        completionHandler("New Data!")
    }
    
    func downloadData3(completionHandler: @escaping (_ data: String) -> ()){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            completionHandler("New Data!")
        }
    }
    
    func downloadData4(completionHandler: @escaping (DownloadResult) -> ()){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            let result = DownloadResult(data: "New Data!")
            completionHandler(result)
        }
    }
    
    func downloadData5(completionHandler: @escaping DownloadCompletion){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            let result = DownloadResult(data: "New Data!")
            completionHandler(result)
        }
    }
    
    func doSomething(forData data: String) {
        print(data)
    }
    
    func doSomething1(data: String) {
        print(data)
    }
    
    func doSomething2(_ data: String) {
        print(data)
    }
}


struct DownloadResult {
    let data: String
}

typealias DownloadCompletion = (DownloadResult) -> ()

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
