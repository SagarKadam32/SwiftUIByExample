//
//  AdvExample_1_Main.swift
//  iDine
//
//  Created by Sagar Kadam on 24/09/22.
//

import SwiftUI

struct AdvExample_1_Main: View {
    var body: some View {
        Group {
            NavigationLink(destination: Adv_Example_1_1()) {
                Text("1. How to use: Generics")
            }
            NavigationLink(destination: Adv_Example_1_2()) {
                Text("2. How to use @ViewBuilder in SwiftUI")
            }
            NavigationLink(destination: Adv_Example_1_3(colorTheme: DefaultColorTheme(), datasource: DefaultDataSource())) {
                Text("3. How to use Protocols in Swift")
            }
            
            NavigationLink(destination: DependancyInjectionBootcamp(dataService: ProductionDataService(url: URL(string: "https://jsonplaceholder.typicode.com/posts")!))) {
                Text("4. How to use Dependency Injection in SwiftUI ")
            }
            
            NavigationLink(destination: BackgroundThreadBootcamp()) {
                Text("5. Multi-threading with background threads and queues in Xcode")
            }
            
            NavigationLink(destination: WeakSelfBootcamp()) {
                Text("6. Use weak self in Swift")
            }
            
            NavigationLink(destination: TypealiasBootcamp()) {
                Text("7. How to use Typealias in Swift ")
            }
            
            NavigationLink(destination: EscapingBootcamp()) {
                Text("8. How to use escaping closures in Swift")
            }
                        
            NavigationLink(destination: CodableBootcamp()) {
                Text("9. Codable, Decodable, and Encodable in Swift")
            }
            
            NavigationLink(destination: DownloadWithEscapingBootcamp()) {
                Text("10. Download JSON from API in Swift w/ URLSession and escaping closures")
            }
        }
        
        Group {
            NavigationLink(destination: DownloadWithCombine()) {
                Text("11. Download JSON from API in Swift with Combine")
            }
            
            NavigationLink(destination: TimerBootcamp()) {
                Text("12. How to use Timer and onReceive in SwiftUI ")
            }
            
            NavigationLink(destination: SubscriberBootcamp()) {
                Text("13. Publishers and Subscribers in Combine with a SwiftUI project  ")
            }
            
            NavigationLink(destination: FileManagerBootcamp()) {
                Text("14. Save data and images to FileManager in Xcode")
            }
        }
    }
}

struct AdvExample_1_Main_Previews: PreviewProvider {
    static var previews: some View {
        AdvExample_1_Main()
    }
}
