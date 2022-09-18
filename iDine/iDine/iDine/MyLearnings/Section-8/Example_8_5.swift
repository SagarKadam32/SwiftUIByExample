//
//  Example_8_5.swift
//  iDine
//
//  Created by Sagar Kadam on 18/09/22.
//

import SwiftUI

struct TaskRow: View {
    var body: some View {
        Text("Task data goes here")
    }
}

struct Example_8_5: View {
    var body: some View {
        VStack {

            List {
                Section(header: Text("Important Tasks")) {
                    TaskRow()
                    TaskRow()
                    TaskRow()
                }
                .headerProminence(.increased)
                
                Section(header: Text("Other Tasks"), footer: Text("End")) {
                    TaskRow()
                    TaskRow()
                    TaskRow()
                }
            }
            .listStyle(.sidebar)
            
            MoreDetailsView(linkURL: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-sections-to-a-list", title: "Sections to a List")
        }
        .padding()
    }
}

struct Example_8_5_Previews: PreviewProvider {
    static var previews: some View {
        Example_8_5()
    }
}
