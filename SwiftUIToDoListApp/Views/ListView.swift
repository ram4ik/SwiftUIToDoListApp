//
//  ListView.swift
//  SwiftUIToDoListApp
//
//  Created by ramil on 16.03.2021.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "This is the first title!",
        "This is the second title!",
        "This is the third title!",
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink(
                    destination: AddView(),
                    label: {
                        Text("Add")
                    })
            )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}


