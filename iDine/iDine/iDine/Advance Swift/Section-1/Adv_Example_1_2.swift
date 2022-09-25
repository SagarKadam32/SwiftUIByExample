//
//  Adv_Example_1_2.swift
//  iDine
//
//  Created by Sagar Kadam on 25/09/22.
//

import SwiftUI

struct HeaderViewRegular: View {
    let title: String
    let description: String?
    let iconName: String?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
            if let description = description {
                Text(description)
                    .font(.callout)
            }
            if let iconName = iconName {
                Image(systemName: iconName)
            }
            RoundedRectangle(cornerRadius: 5)
                .frame(height:2)
        }
    }
}

struct HeaderViewGeneric<Content:View>: View {
    let title: String
    let content: Content
    
    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
            content
            
            RoundedRectangle(cornerRadius: 5)
                .frame(height:2)
        }
    }
}

struct LocalViewBuilder: View {
    
    enum ViewType {
        case one, two, three
    }
    let type: ViewType
    
    private var viewOne: some View {
        Text("One")
    }
    
    private var viewTwo: some View {
        VStack {
            Text("TWOOOO")
            Image(systemName: "heart.fill")
        }
    }
    
    private var viewThree: some View {
        Image(systemName: "heart")
    }
    
    @ViewBuilder private var headerSection: some View {
        switch type {
        case .one:
            viewOne
        case .two:
            viewTwo
        case .three:
            viewThree
        }
        /*
        if type == .one {
            viewOne
        } else if type == .two {
            viewTwo
        } else if type == .three {
            viewThree
        } */
 
    }
    var body: some View {
        VStack {
            headerSection
        }
    }
}

struct Adv_Example_1_2: View {
    var body: some View {
        VStack {
            HeaderViewRegular(title: "Regular Title", description: "This is regular title", iconName: "heart.fill")
            
            HeaderViewRegular(title: "Another Title", description: "Title2", iconName: "pencil")
            
            HeaderViewRegular(title: "Another Title 1", description: nil, iconName: nil)
            RoundedRectangle(cornerRadius: 5)
                .frame(height:2)
            
            HeaderViewGeneric(title: "Generic View Title") {
                Text("This is sample Generic Text")
            }
            HeaderViewGeneric(title: "Generic View 2") {
                HStack {
                    Image(systemName: "heart")
                    Text("This is sample text")
                }
            }
            RoundedRectangle(cornerRadius: 5)
                .frame(height:2)
            Group {
                Text("@ViewBuilder as variable")
                LocalViewBuilder(type: .one)
                LocalViewBuilder(type: .two)
                LocalViewBuilder(type: .three)
            }

            
            Spacer()
            Section {
                MoreDetailsView(linkURL: "https://www.youtube.com/watch?v=pXmBRK1BjLw&list=PLwvDm4Vfkdphc1LLLjCaEd87BEg07M97y&index=10", title: "@ViewBuilder")
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct Adv_Example_1_2_Previews: PreviewProvider {
    static var previews: some View {
        Adv_Example_1_2()
    }
}
