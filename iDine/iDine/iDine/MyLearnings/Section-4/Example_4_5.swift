//
//  Example_4_5.swift
//  iDine
//
//  Created by Sagar Kadam on 12/09/22.
//

import SwiftUI

struct Example_4_5: View {
    @State private var birthDate = Date()
    @State private var date = Date()
    var body: some View {
        ScrollView {
            VStack {
                DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                    Text("Select a date")
                }
                
                Text("Date is \(birthDate.formatted(date: .long, time: .omitted))")
                Spacer()
                Text("Enter your birthday")
                DatePicker("Enter you BirthDay", selection: $date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .frame(maxHeight: 400)
            }
            .padding()
        }
    }
}

struct Example_4_5_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_5()
    }
}
