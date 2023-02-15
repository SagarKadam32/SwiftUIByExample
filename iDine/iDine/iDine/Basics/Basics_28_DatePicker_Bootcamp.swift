//
//  Basics_28_DatePicker_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 15/02/23.
//

import SwiftUI

struct Basics_28_DatePicker_Bootcamp: View {
    @State var mySelectedDate: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents( year: 2018)) ?? Date()
    
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("SELECTED DATE IS: ")
            Text(mySelectedDate.description)
                .font(.title)
                .bold()
            
            Text("SELECTED FORMATTED DATE IS: ")
            Text(dateFormatter.string(from: mySelectedDate))
                .font(.title)
                .bold()
            
            DatePicker("Select a date", selection: $mySelectedDate)
                .accentColor(.red)
            .datePickerStyle(CompactDatePickerStyle())
            //    .datePickerStyle(GraphicalDatePickerStyle())
            //    .datePickerStyle(WheelDatePickerStyle())
            
            DatePicker("Select a date (components)", selection: $mySelectedDate, displayedComponents: [.date])
            
            DatePicker("Select a date (components)", selection: $mySelectedDate, displayedComponents: [.hourAndMinute])
            
            DatePicker("Select a date (Closed Date Range)", selection: $mySelectedDate, in: startingDate...endingDate,displayedComponents: [.date])
                .datePickerStyle(WheelDatePickerStyle())
            

        }
        .padding()
    }
}

struct Basics_28_DatePicker_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_28_DatePicker_Bootcamp()
    }
}
