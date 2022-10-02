//
//  CodableBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 01/10/22.
//

import SwiftUI

struct CustomerModel : Identifiable, Decodable {
    let id: String
    let name: String
    let points: Int
    let isPremium: Bool
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case points
        case isPremium
    }
    
    init(id: String, name: String, points: Int, isPremium: Bool) {
        self.id = id
        self.name = name
        self.points = points
        self.isPremium = isPremium
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.points = try container.decode(Int.self, forKey: .points)
        self.isPremium = try container.decode(Bool.self, forKey: .isPremium)
    }
}

class CodableViewModel: ObservableObject {
    
    @Published var customer: CustomerModel?
    
    init() {
        getData()
    }
    
    func getData() {
        
        guard let data = getJSONData() else { return }
        /*
        print("JSON DATA:")
        print(data)
        let jsonString = String(data: data, encoding: .utf8)
        print(jsonString)
         */
        
        /*
        if
            let localData = try? JSONSerialization.jsonObject(with: data, options: []),
            let dictionary = localData as? [String:Any],
            let id = dictionary["id"] as? String,
            let name = dictionary["name"] as? String,
            let points = dictionary["points"] as? Int,
            let isPremium = dictionary["isPremium"] as? Bool {
            let newCustomer = CustomerModel(id: id, name: name, points: points, isPremium: isPremium)
            customer = newCustomer
        }
         */
        do {
            self.customer = try JSONDecoder().decode(CustomerModel.self, from: data)
        } catch let error {
            print("Error decoding. \(error)")
        }
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
            Spacer()
            if let customer = vm.customer {
                Text(customer.id)
                Text(customer.name)
                Text("\(customer.points)")
                Text(customer.isPremium.description)
            }
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=H9mt8WjpZgM&list=PLwvDm4VfkdpiagxAXCT33Rkwnc5IVhTar&index=24", title: "Codable Protocol")
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
