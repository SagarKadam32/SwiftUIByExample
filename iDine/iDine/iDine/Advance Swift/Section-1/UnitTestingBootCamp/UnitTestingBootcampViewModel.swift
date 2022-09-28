//
//  UnitTestingBootcampViewModel.swift
//  iDine
//
//  Created by Sagar Kadam on 28/09/22.
//

import Foundation

class UnitTestingBootcampViewModel : ObservableObject {
    @Published var isPremium : Bool
    @Published var dataArray: [String] = []

    init(isPremium: Bool) {
        self.isPremium = isPremium
    }
    
    func addItem(item: String) {
        guard !item.isEmpty else { return }
        self.dataArray.append(item)
    }
}
