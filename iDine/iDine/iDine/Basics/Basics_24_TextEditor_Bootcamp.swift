//
//  Basics_24_TextEditor_Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 14/02/23.
//

import SwiftUI

struct Basics_24_TextEditor_Bootcamp: View {
    
    @State var myTextEditorText: String = "This is this initial level text"
    @State var mySavedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $myTextEditorText)
                    .frame(height: 250)
                    .colorMultiply(.green)
                    .cornerRadius(10)
                
                Button(action: {
                    mySavedText = myTextEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                })
                Text("Your Content :")
                Text(mySavedText)
                
                Spacer()
            }
            .padding()
            .navigationTitle("My TextEditor Demo")
        }
    }
}

struct Basics_24_TextEditor_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_24_TextEditor_Bootcamp()
    }
}
