//
//  Basics_26_Picker_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 14/02/23.
//

import SwiftUI

struct Basics_26_Picker_Bootcamp: View {
    
    @State var mySelection: String = "Most Recent"
    let myFilterOptions: [String] = ["Most Recent", "Most Popular", "Most Liked"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes: [NSAttributedString.Key: Any] = [.foregroundColor : UIColor.white]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        /* SegmentedPickerStyle */
        Picker(selection: $mySelection,
               label: Text("Picker"),
               content: {
            ForEach(myFilterOptions.indices) { index in
                Text(myFilterOptions[index])
                    .tag(myFilterOptions[index])
            }
        })
        .pickerStyle(SegmentedPickerStyle())
        
        /* MenuPickerStyle */
        /*
        Picker(
            selection: $mySelection,
            label:
                HStack {
                    Text("Filter:")
                    Text(mySelection)
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .cornerRadius(10)
                .shadow(color: .blue, radius: 10, x: 0, y: 10)
            
            ,
            content: {
                ForEach(myFilterOptions, id: \.self) { option in
                    HStack {
                        Text(option)
                        Image(systemName: "heart.fill")
                    }
                    .tag(option)

                }
            })
        .pickerStyle(MenuPickerStyle())
         */
        
        /* WheelPickerStyle */
        /*
        VStack {
            HStack {
                Text("Age:")
                Text(mySelection)
            }
            
            Picker(
                selection: $mySelection,
                label: Text("Picker"),
                   content: {
                       ForEach(18..<100, content: { number in
                            Text("\(number)")
                               .font(.headline)
                               .foregroundColor(.red)
                               .tag("\(number)")
                       })
                       .pickerStyle(WheelPickerStyle())
            })
        } */
    }
}

struct Basics_26_Picker_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_26_Picker_Bootcamp()
    }
}
