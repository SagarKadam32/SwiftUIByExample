//
//  DownloadingImagesBootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 19/10/22.
//

import SwiftUI

// Background Threads
// Weak Self
// Combine
// Publishers and Subscribers
// FileManager
// NSCache
// Codable

struct DownloadingImagesBootcamp: View {
    @StateObject var vm = DownloadingImagesViewModel()
    
    var body: some View {
        NavigationView {
            List {
                    ForEach(vm.dataArray) { model in
                        Text(model.title)
                    }
                }
        }
        .navigationTitle("Downloading Images")
    }
}


struct DownloadingImagesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DownloadingImagesBootcamp()
    }
}
