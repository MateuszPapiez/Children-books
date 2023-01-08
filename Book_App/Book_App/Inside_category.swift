//
//  Menu_tile.swift
//  Book_App
//
//  Created by Mateusz   on 21/12/2022.
//

import SwiftUI


//var book_cover : [Cover] = [
//Cover(image: "M_I_Animal", title_header: "Zwierzęta", text_header: "XYZ", color: Color(App_Color.menu_color_animal)),
//Cover(image: "M_I_Animal", title_header: "Bla", text_header: "23", color: Color(App_Color.menu_color_animal)),
//Cover(image: "M_I_Animal", title_header: "asas", text_header: "X321Z", color: Color(App_Color.menu_color_animal)),
//]

//struct Cover: Identifiable, Decodable {
//var id: UUID = UUID()
//let image: String
//let title_header: String
// let text_header: String
// let color: Color
//}



struct Inside_category: View {
    let lib: [Onebook]
    
    
    
    
    var body: some View {
        // ForEach(library, id: \.title) { lib in
        ZStack {
            Color(App_Color.background_color)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack{
                ForEach(lib, id: \.self){ singlebook in
                    Text(singlebook.main_title)
                        .foregroundColor(.yellow)
                }
            }
        }
    }
}

struct Inside_category_Previews: PreviewProvider {
    static var previews: some View {
        Inside_category(lib: [
            Onebook.init(main_title: "Abc", top_description: "sdsfsf", top_image: "M_I_Queen")
        ])
    }
}
