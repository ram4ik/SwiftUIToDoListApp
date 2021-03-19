//
//  SwiftUIToDoListAppApp.swift
//  SwiftUIToDoListApp
//
//  Created by ramil on 16.03.2021.
//

import SwiftUI

@main
struct SwiftUIToDoListAppApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
