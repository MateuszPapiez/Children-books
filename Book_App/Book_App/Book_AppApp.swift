//
//  Book_AppApp.swift
//  Book_App
//
//  Created by Mateusz Papież on 21/12/2022.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore



class AppDelegate: NSObject, UIApplicationDelegate { //dodano Observarable //
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        //print("Your code here")
        FirebaseApp.configure()
        
        var firebase_manager : FirebaseM = FirebaseM()
        firebase_manager.fetchData()
        return true
    }
}
@main
struct Book_AppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView(library:Book.allBook)
            //Book_content.init(book_inside: Book_inside.init(text_book_inside: "**Lorem** Ipsum**", title_book_inside: "Lorem"))
        }
    }
}
