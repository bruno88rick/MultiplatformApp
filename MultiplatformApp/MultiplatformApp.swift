//
//  MultiplatformAppApp.swift
//  MultiplatformApp
//
//  Created by Bruno Oliveira on 17/05/24.
//

import SwiftUI

@main
struct MultiplatformApp: App {
    @StateObject var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                SidebarView()
            } content: {
                ContentView()
            } detail: {
                DetailView()
            }
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
