//
//  UnitTestingBootcampViewModel.swift
//  iDine
//
//  Created by Sagar Kadam on 28/09/22.
//

import Foundation

class UnitTestingBootcampViewModel : ObservableObject {
    @Published var isPremium : Bool
    

    init(isPremium: Bool) {
        self.isPremium = isPremium
    }
}
