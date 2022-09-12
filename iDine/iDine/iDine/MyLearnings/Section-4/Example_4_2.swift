//
//  Example_4_2.swift
//  iDine
//
//  Created by Sagar Kadam on 11/09/22.
//

import SwiftUI

struct Example_4_2: View {
    @State private var name: String = ""
    @State private var emailAddress: String = ""
    @FocusState private var nameIsFocused: Bool
    
    enum Field {
         case firstName
         case lastName
         case emailAddressInFocus
     }

     @State private var firstName = ""
     @State private var lastName = ""
     @State private var emailAddressInFocus = ""
     @FocusState private var focusedField: Field?
     @State private var tipAmount = ""
    @State private var password: String = ""



    var body: some View {
        
        ScrollView {
            VStack(spacing: 10) {
                Group {
                    Text("4.2.1 How to read text from a TextField")
                        .font(.title)
                        .fontWeight(.black)
                    VStack(alignment: .leading) {
                        TextField("Enter Your Name", text: $name)
                        Text("Hello, \(name)!")
                    }
                    Text("4.2.2 How to add a border to a TextField")
                        .font(.title)
                        .fontWeight(.black)
                    VStack(alignment: .trailing) {
                        TextField("Enter you name in border", text: $name)
                            .textFieldStyle(.roundedBorder)
                        Text("Hello, \(name)!")

                    }
                    Text("4.2.3 How to add a placeholder to a TextField")
                        .font(.title)
                        .fontWeight(.black)
                    VStack(alignment: .trailing) {
                        TextField("sagarkadam@gmail.com", text: $emailAddress)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                    }
                    
                    Text("4.2.4 How to disable autocorrect in a TextField")
                        .font(.title)
                        .fontWeight(.black)
                    VStack(alignment: .leading) {
                        TextField("Enter Your Name", text: $name)
                            .disableAutocorrection(true)
                    }
                }
                
                Group {
                    Text("4.2.5 How to dismiss the keyboard for a TextField")
                        .font(.title)
                        .fontWeight(.black)
                    VStack(alignment: .leading) {
                        TextField("Enter Your Name", text: $name)
                            .focused($nameIsFocused)
                        Button("Submit") {
                            nameIsFocused = false
                        }
                    }
                    
                    VStack {
                        TextField("Enter your first name", text: $firstName)
                            .focused($focusedField, equals: .firstName)
                            .textContentType(.givenName)
                            .submitLabel(.next)

                        TextField("Enter your last name", text: $lastName)
                            .focused($focusedField, equals: .lastName)
                            .textContentType(.familyName)
                            .submitLabel(.next)

                        TextField("Enter your email address", text: $emailAddressInFocus)
                            .focused($focusedField, equals: .emailAddressInFocus)
                            .textContentType(.emailAddress)
                            .submitLabel(.join)
                    }
                    .onSubmit {
                        switch focusedField {
                        case .firstName:
                            focusedField = .lastName
                        case .lastName:
                            focusedField = .emailAddressInFocus
                        default:
                            print("Creating account…")
                        }
                    }
                    
                    VStack {
                        TextField("Tip Amount ", text: $tipAmount)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.decimalPad)

                        Button("Submit") {
                            print("Tip: \(tipAmount)")
                            hideKeyboard()
                        }
                    }
                    
                    Text("4.2.6 How to create secure text fields using SecureField")
                        .font(.title)
                        .fontWeight(.black)
                    VStack(alignment: .leading) {
                        SecureField("Enter a password", text: $password)
                        Text("You entered: \(password)")
                    }
                }
               
            }
            .padding()
        }

    }
}

struct Example_4_2_Previews: PreviewProvider {
    static var previews: some View {
        Example_4_2()
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
