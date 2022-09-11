//
//  Example_3_8.swift
//  iDine
//
//  Created by Sagar Kadam on 11/09/22.
//

import SwiftUI


struct GridStack<Content:View>: View {
    let rows: Int
    let columns : Int
    let content : (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< columns, id:\.self) { column in
                        content(row, column)
                    }
                }
                
            }
        }
    }
    
    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}

struct Example_3_8: View {
    let data  = (1...100).map { "Item \($0)"}
    
    let columnsAdaptive = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    let columnsFlexible = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let columnsFixed = [
        GridItem(.fixed(100)),
        GridItem(.flexible())
    ]
    
    
    let items = 1...50
    
    let rows = [
        GridItem(.fixed(50)),
        GridItem(.fixed(50))
    ]
    
    var body: some View {
        ScrollView{
            VStack {
                Text("LazyVGrid : Columns Adaptive")
                    .font(.title)
                    .fontWeight(.black)
                ScrollView {
                    LazyVGrid(columns: columnsAdaptive, spacing: 20) {
                        ForEach(data, id: \.self) { item in
                            Text(item)
                        }
                    }
                    .padding(.horizontal)
                }
                .frame(maxHeight: 250)
                
                Text("LazyVGrid : Columns Flexible")
                    .font(.title)
                    .fontWeight(.black)
                ScrollView {
                    LazyVGrid(columns: columnsFlexible, spacing: 20) {
                        ForEach(data, id: \.self) { item in
                            Text(item)
                        }
                    }
                    .padding(.horizontal)
                }
                .frame(maxHeight: 250)
                
                
                Text("LazyVGrid : Columns Fixed")
                    .font(.title)
                    .fontWeight(.black)
                ScrollView {
                    LazyVGrid(columns: columnsFixed, spacing: 20) {
                        ForEach(data, id: \.self) { item in
                            Text(item)
                        }
                    }
                    .padding(.horizontal)
                }
                .frame(maxHeight: 250)
                
                
                Text("LazyHGrid : Rows Fixed")
                    .font(.title)
                    .fontWeight(.black)
                ScrollView(.horizontal) {
                    LazyHGrid(rows: rows, alignment: .center) {
                        ForEach(items, id: \.self) { item in
                            Image(systemName: "\(item).circle.fill")
                                .font(.largeTitle)
                        }
                     }
                    .frame(height: 100)
                }
                
                
                Text("LazyHGrid : Rows Fixed - iOS-13")
                    .font(.title)
                    .fontWeight(.black)
                
                GridStack(rows: 4, columns: 4) { row, col in
                    Image(systemName: "\(row * 4 + col).circle")
                    Text("R\(row) C\(col)")
                }
                
            }
           
        }
        .padding()
       

    }
}

struct Example_3_8_Previews: PreviewProvider {
    static var previews: some View {
        Example_3_8()
    }
}
