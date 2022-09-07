//
//  iDineApp.swift
//  iDine
//
//  Created by Sagar Kadam on 06/09/22.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
