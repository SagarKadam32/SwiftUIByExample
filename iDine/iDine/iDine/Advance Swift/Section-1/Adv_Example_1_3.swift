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

struct Adv_Example_1_3: View {
    let colorTheme : ColorThemeProtocol
    var body: some View {
        ZStack {
            colorTheme.tertiary.ignoresSafeArea()
            Text("Protocols are awesome!")
                .font(.headline)
                .padding()
                .foregroundColor(colorTheme.secondary)
                .background(colorTheme.primary)
                .cornerRadius(10)
        }
    }
}

struct Adv_Example_1_3_Previews: PreviewProvider {
     static var previews: some View {
        Adv_Example_1_3(colorTheme: AnotherThemeProtocol())
    }
}
