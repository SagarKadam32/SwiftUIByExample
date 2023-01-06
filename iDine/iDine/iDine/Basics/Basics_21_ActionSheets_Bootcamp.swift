//
//  Basics_21_ActionSheets_Bootcamp.swift
//  iDine
//
//  Created by Capgemini-DA073 on 1/6/23.
//

import SwiftUI

struct Basics_21_ActionSheets_Bootcamp: View {
    @State var showActionSheet: Bool = false
    var body: some View {

        Button("Show Action Sheet") {
            showActionSheet.toggle()
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        return ActionSheet(title: Text("Action Sheet"))
    }
}

struct Basics_21_ActionSheets_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_21_ActionSheets_Bootcamp()
    }
}
