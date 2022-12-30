//
//  BookwormApp.swift
//  Bookworm
//
//  Created by OAA on 29/12/2022.
//

import SwiftUI

@main
struct BookwormApp: App {
    
    // Creating an instance of DataController and sending it into SwiftUI's environment. This way every view in the project can use it
    // @Environment stores things like our time zone, user itnerface appearance, etc
    @StateObject private var dataController = DataController()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
