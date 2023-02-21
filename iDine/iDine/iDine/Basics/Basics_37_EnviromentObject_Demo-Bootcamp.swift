//
//  Basics_37_EnviromentObject_Demo-Bootcamp.swift
//  iDine
//
//  Created by Sagar Kadam on 21/02/23.
//

import SwiftUI

class EnviormentViewModel : ObservableObject {
    @Published var dataArray: [String] = []
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "MacBook", "i-Mac", "Apple-Watch"])
    }
}

struct Basics_37_EnviromentObject_Demo_Bootcamp: View {
    @StateObject var viewModel : EnviormentViewModel = EnviormentViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(destination: SecondScreenView(selectedItem: item, viewModel: viewModel)) {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
    }
}

struct SecondScreenView : View {
    let selectedItem: String
    @ObservedObject var viewModel: EnviormentViewModel
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            NavigationLink(destination: FinalScreenView(viewModel: viewModel)) {
                Text(selectedItem)
                    .font(.headline)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .foregroundColor(.orange)
                    .cornerRadius(30.0)
            }
        }
    }
}

struct FinalScreenView : View {
    @ObservedObject var viewModel: EnviormentViewModel

    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.green, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            ScrollView {
                VStack {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                            .font(.title)
                    }
                }
            }
        }
    }
}

struct Basics_37_EnviromentObject_Demo_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_37_EnviromentObject_Demo_Bootcamp()
    }
}
