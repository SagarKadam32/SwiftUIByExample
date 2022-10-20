//
//  DownloadingImageView.swift
//  iDine
//
//  Created by Sagar Kadam on 20/10/22.
//

import SwiftUI

struct DownloadingImageView: View {
    @State var isLoading: Bool = true
    
    var body: some View {
        ZStack {
            if isLoading {
                ProgressView()
            } else {
                Circle()
            }
        }
    }
}

struct DownloadingImageView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadingImageView()
            .frame(width: 75, height: 75)
            .previewLayout(.sizeThatFits)
    }
}
