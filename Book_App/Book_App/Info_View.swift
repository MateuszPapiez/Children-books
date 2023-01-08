//
//  info_View.swift
//  Book_App
//
//  Created by Mateusz Papież on 21/12/2022.
//

import SwiftUI

struct Info_View: View {
    var body: some View {
        NavigationView(){
            
            ZStack{
                Color(App_Color.background_color)
                    .edgesIgnoringSafeArea(.all)
                
                VStack (){
                    Text("version 1.3 \n what new?")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .font(.custom("AmaticSC-Bold", size: 28))
                }
            }
            .navigationBarTitle("Info")

        }
        
    }
}

struct Info_View_Previews: PreviewProvider {
    static var previews: some View {
        Info_View()
    }
}
