//
//  Adv_Example_1_3.swift
//  iDine
//
//  Created by Sagar Kadam on 25/09/22.
//

import SwiftUI

protocol ColorThemeProtocol {
    var primary: Color { get }
    var secondary: Color { get }
    var tertiary: Color { get }
}

struct DefaultColorTheme : ColorThemeProtocol{
    let primary: Color = .blue
    let secondary: Color = .white
    let tertiary: Color = .gray
}

struct AlternativeColorTheme : ColorThemeProtocol {
    let primary: Color = .green
    let secondary: Color = .white
    let tertiary: Color = .yellow
}

struct AnotherThemeProtocol: ColorThemeProtocol {
    var primary: Color = .purple
    var secondary: Color = .white
    var tertiary: Color = .mint
}

protocol ButtonTextProtocol {
    var buttonText: String { get }
}

protocol ButtonPressedProtocol {
    func buttonPressed()
}

protocol ButtonDataSourceProtocol: ButtonTextProtocol, ButtonPressedProtocol {
    
}

class DefaultDataSource: ButtonDataSourceProtocol {
    var buttonText: String = "Protocols are awesome!"
    
    func buttonPressed() {
        print("Button was presssed!")
    }
}

class AlternativeDataSource: ButtonTextProtocol {
    var buttonText: String = "Protocols can be extended."
}

struct Adv_Example_1_3: View {
    let colorTheme : ColorThemeProtocol
    let datasource: ButtonDataSourceProtocol
    var body: some View {
        VStack {
            ZStack {
                colorTheme.tertiary.ignoresSafeArea()
                
                Text(datasource.buttonText)
                    .font(.headline)
                    .padding()
                    .foregroundColor(colorTheme.secondary)
                    .background(colorTheme.primary)
                    .cornerRadius(10)
                    .onTapGesture {
                        datasource.buttonPressed()
                    }
            }
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=0gM1wmW1Xvc&list=PLwvDm4Vfkdphc1LLLjCaEd87BEg07M97y&index=18", title: "Protocols")
        }

    }
}

struct Adv_Example_1_3_Previews: PreviewProvider {
     static var previews: some View {
         Adv_Example_1_3(colorTheme: AnotherThemeProtocol(), datasource: DefaultDataSource())
    }
}
