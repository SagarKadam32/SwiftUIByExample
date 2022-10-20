//
//  DownloadingImagesRow.swift
//  iDine
//
//  Created by Sagar Kadam on 20/10/22.
//

import SwiftUI

struct DownloadingImagesRow: View {
    let model: PhotoModel
    
    var body: some View {
        HStack {
            Circle()
                .frame(width: 75, height: 75)
            VStack(alignment: .leading) {
                Text(model.title)
                    .font(.headline)
                Text(model.url)
                    .foregroundColor(.gray)
                    .italic()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
    }
}

struct DownloadingImagesRow_Previews: PreviewProvider {
    static var previews: some View {
        DownloadingImagesRow(model: PhotoModel(albumId: 1, id: 1, title: "Title", url: "url", thumbnailUrl: "url"))
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
