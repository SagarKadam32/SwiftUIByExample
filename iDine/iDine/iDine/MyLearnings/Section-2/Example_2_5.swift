//
//  Example_2_5.swift
//  iDine
//
//  Created by Sagar Kadam on 09/09/22.
//

import SwiftUI

struct TopResultView: View {
    var body: some View {
        if Bool.random() {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
        }else {
            Text("Better luck next time")
                .font(.title)
        }
    }
}

struct Example_2_5: View {
    
    var tossResult: some View {
        Group {
            if Bool.random() {
                Image(systemName: "pencil")
                    .resizable()
                    .scaledToFit()
            }else {
                Text("Better luck next time")
                    .font(.title)
            }
        }
        .frame(width:400, height: 300)
    }
    
    var tossResultAnyView: some View {
        if Bool.random() {
            return AnyView(Image(systemName: "pencil").resizable().scaledToFit())
        }else {
            return AnyView(Text("Better luck next time").font(.title))
        }
    }
    
    @ViewBuilder var tossResultViewBuilder: some View {
        if Bool.random() {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
        }else {
            Text("Better luck next time")
                .font(.title)
        }
    }
    
    
    var body: some View {
        ScrollView{
            VStack {
                Text("Coin Flip")
                    .font(.largeTitle)
                
                tossResult
                    .background(.blue)
                
                tossResultAnyView
                    .frame(width: 400, height: 300)
                    .background(.green)
                
                tossResultViewBuilder
                    .frame(width:400, height: 300)
                    .background(.red)
                
                TopResultView()
                    .frame(width:400, height: 300)
                    .background(.orange)
            }
        }

    }
}

struct Example_2_5_Previews: PreviewProvider {
    static var previews: some View {
        Example_2_5()
    }
}
