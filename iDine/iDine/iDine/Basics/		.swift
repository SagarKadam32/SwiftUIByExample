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
        //.actionSheet(isPresented: $showActionSheet, content: getBasicActionSheet)
        .actionSheet(isPresented: $showActionSheet, content: getStandardActionSheet)

    }
    
    func getBasicActionSheet() -> ActionSheet {
        return ActionSheet(title: Text("Action Sheet"))
    }
    
    func getStandardActionSheet() -> ActionSheet {
        
        let button1: ActionSheet.Button = .default(Text("Default"))
        let button2: ActionSheet.Button = .destructive(Text("Delete"))
        let button3: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("Title Action Sheet"),
            message: Text("This is descriptive message"),
            buttons: [button1,button1,button1,button1,button2,button3])
    }
}

struct Basics_21_ActionSheets_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Basics_21_ActionSheets_Bootcamp()
    }
}
