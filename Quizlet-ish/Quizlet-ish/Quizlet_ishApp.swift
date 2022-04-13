//
//  Quizlet_ishApp.swift
//  Quizlet-ish
//
//  Created by Bob Lin on 4/12/22.
//

import SwiftUI
import Firebase

@main
struct Quizlet_ishApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
