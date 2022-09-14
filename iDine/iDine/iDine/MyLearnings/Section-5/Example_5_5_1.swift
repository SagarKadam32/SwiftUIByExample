//
//  Example_5_5_1.swift
//  iDine
//
//  Created by Sagar Kadam on 14/09/22.
//

import SwiftUI

struct SourceViewer: View {
    let site: String
    
    @State private var sourceCode = "Loading.."
    
    var body: some View {
        ScrollView {
            Text(sourceCode)
                .font(.system(.body, design: .monospaced))
        }
        .task {
            guard let url = URL(string: "https://\(site)") else {
                return
            }
            
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                sourceCode = String(decoding: data, as: UTF8.self).trimmingCharacters(in: .whitespacesAndNewlines)
            } catch {
                sourceCode = "Failed to fetch site"
            }
        }
    }
}

struct Example_5_5_1: View {
    let sites = ["Apple.com", "HackingwithSwift.com", "Swift.org"]
    var body: some View {

        NavigationView {
            List(sites, id: \.self) { site in
                NavigationLink(site) {
                    SourceViewer(site: site)
                }
                
            }
            .navigationBarTitle("View Source")
        }

    }
}

struct Example_5_5_1_Previews: PreviewProvider {
    static var previews: some View {
        Example_5_5_1()
    }
}
