//
//  CodableBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 01/10/22.
//

import SwiftUI

struct CustomerModel : Identifiable {
    let id: String
    let name: String
    let points: Int
    let isPremium: Bool
}

class CodableViewModel: ObservableObject {
    
    @Published var customer: CustomerModel?
    
    init() {
        getData()
    }
    
    func getData() {
        
        guard let data = getJSONData() else { return }
        print("JSON DATA:")
        print(data)
        
    }
    
    func getJSONData() -> Data? {
        
        let dictionary: [String: Any] = [
            "id" : "12345",
            "name" : "Sagar",
            "points" : 5,
            "isPremium" :  true
        ]
        
        let jsonData = try? JSONSerialization.data(withJSONObject: dictionary, options: [])
        return jsonData
    }
}

struct CodableBootcamp: View {
    
    @StateObject var vm = CodableViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Codable is one of the most powerful protocols in Swift! We use this to 'decode' and 'encode' data in our application. This is especially useful for downloading data from the internet, because when we download data it will come as a foreign data type (usually JSON data). We then use Codable to transform (or 'decode') the JSON data into a data type that we have in our iOS application. In this video we will first learn how Codable is actually using Decodable and Encodable protocols behind the scenes to transform the data and then we will learn how to implement Codable itself!")
                .font(.headline)
                .fontWeight(.semibold)
            
            if let customer = vm.customer {
                Text(customer.id)
                Text(customer.name)
                Text("\(customer.points)")
                Text(customer.isPremium.description)
            }
        }
        .padding()
    }
}

struct CodableBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CodableBootcamp()
    }
}
