//
//  Twtiter_cloneApp.swift
//
//  Created by Mario Galvan on 03/04/21.
//

import SwiftUI
import Firebase

@main
struct Twtiter_cloneApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
