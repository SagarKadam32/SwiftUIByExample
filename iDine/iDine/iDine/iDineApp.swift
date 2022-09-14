//
//  iDineApp.swift
//  iDine
//
//  Created by Sagar Kadam on 06/09/22.
//

import SwiftUI

@main
struct iDineApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject var order = Order()
    
    // register initial UserDefaults values eery launch
    init() {
        UserDefaults.standard.register(defaults:[
            "name" : "Sagar Kadam",
            "hightScore": 10
        ])
    }
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
