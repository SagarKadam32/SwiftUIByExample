//
//  Example_3_6.swift
//  iDine
//
//  Created by Sagar Kadam on 11/09/22.
//

import SwiftUI

struct Example_3_6: View {
    @State var dragAmount = CGSize.zero
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(1..<20) { num in
                        VStack {
                            GeometryReader { geo in
                                Text("Number \(num)")
                                    .font(.largeTitle)
                                    .padding()
                                    .background(.red)
                                    .rotation3DEffect(.degrees(-Double(geo.frame(in: .global).minX) / 8), axis: (x: 0, y: 1, z: 0))
                                    .frame(width: 200, height: 200)
                            }
                            .frame(width: 200, height: 200)
                        }
                    }
                }
            }
            
            VStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 200, height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .rotation3DEffect(.degrees(-Double(dragAmount.width) / 20), axis: (x: 0, y: 1, z: 0))
                    .rotation3DEffect(.degrees(Double(dragAmount.height / 20)), axis: (x: 1, y: 0, z: 0))
                    .offset(dragAmount)
                    .gesture(
                        DragGesture()
                            .onChanged { dragAmount = $0.translation }
                            .onEnded { _ in
                                withAnimation(.spring()) {
                                    dragAmount = .zero
                                }
                            }
                    )
            }
            .frame(width: 400, height: 400)
        }



    }
}

struct Example_3_6_Previews: PreviewProvider {
    static var previews: some View {
        Example_3_6()
    }
}
