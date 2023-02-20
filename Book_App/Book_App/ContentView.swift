//
//  ContentView.swift
//  Book_App
//
//  Created by Mateusz Papież on 21/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    //    init() {
    //        UITabBar.appearance().unselectedItemTintColor = UIColor(Color(App_Color.tab_bar_yellow))
    //    }
    //
    //@ObservedObject public var app_delegate = AppDelegate()
    
    var library: [Book]
    
    var body: some View {
        
        NavigationView {
            
            TabView {
                
                Main_view(library:library) //empty Main_view()
                    .tabItem{
                        Image(systemName: "book")
                        Text("Books")
                        
                    }
                
                Profile_View()
                    .tabItem{
                        Image(systemName: "person")
                        Text("Account")
                    }
                
                Info_View()
                    .tabItem{
                        Image(systemName: "info.circle")
                        Text("Info")
                    }
            }
            
            .accentColor(Color(App_Color.tab_bar_red))
            //.unselectedItemTintColor = UIColor(Color(App_Color.tab_bar_yellow))
        }
        
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
