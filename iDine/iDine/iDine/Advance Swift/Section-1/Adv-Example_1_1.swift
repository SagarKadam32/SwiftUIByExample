//
//  Adv-Example_1_1.swift
//  iDine
//
//  Created by Sagar Kadam on 24/09/22.
//

import SwiftUI

struct StringModel {
    let info: String?
    func removeInfo() -> StringModel {
        StringModel(info: nil)
    }
}

struct BoolModel {
    let info: Bool?
    func removeInfo() -> BoolModel {
        BoolModel(info: nil)
    }
}
class GenericsViewModel: ObservableObject {
    @Published var stringModel = StringModel(info: "Hello World!")
    @Published var boolModel = BoolModel(info: true)
    func removeData() {
        stringModel = stringModel.removeInfo()
        boolModel = boolModel.removeInfo()
    }
}

struct Adv_Example_1_1: View {
    @StateObject private var vm = GenericsViewModel()
    var body: some View {
        VStack {
            Text(vm.stringModel.info ?? "No String Data")
            Text(vm.boolModel.info?.description ?? "No Bool Data")
            
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=rx3uRICZr5I&list=PLwvDm4Vfkdphc1LLLjCaEd87BEg07M97y&index=9", title: "Generics")
            }
        }
        .onTapGesture {
            vm.removeData()
        }
    }
}

struct Adv_Example_1_1_Previews: PreviewProvider {
    static var previews: some View {
        Adv_Example_1_1()
    }
}
