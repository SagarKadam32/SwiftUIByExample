//
//  Basics_23_TextField_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 13/02/23.
//

import SwiftUI

struct Basics_23_TextField_Bootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            
            VStack {
                TextField("Type something here..",text: $textFieldText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                .font(.headline)
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                },label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count > 2 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct Basics_23_TextField_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_23_TextField_Bootcamp()
    }
}
