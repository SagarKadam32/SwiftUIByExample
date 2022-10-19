//
//  DownloadingImagesViewModel.swift
//  iDine
//
//  Created by Sagar Kadam on 19/10/22.
//

import Foundation
import Combine

class DownloadingImagesViewModel : ObservableObject {
    
    @Published var dataArray : [PhotoModel] = []
    var cancellables = Set<AnyCancellable>()
    
    let dataService = PhotoModelDataService.instance
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        dataService.$photoModels
            .sink { [weak self] (returnedPhotoModels) in
                self?.dataArray = returnedPhotoModels
            }
            .store(in: &cancellables)
    }
}
