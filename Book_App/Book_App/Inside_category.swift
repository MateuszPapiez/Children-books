//
//  Menu_tile.swift
//  Book_App
//
//  Created by Mateusz   on 21/12/2022.
//

import SwiftUI

struct Inside_category: View {
    
    let lib: [Onebook]
    
    //let book_inside: Book_inside
    
    var body: some View {
        
        NavigationView{ //when I delete it, there will be a white line
            TabView{
                ForEach(lib) { onebook in
                    NavigationLink (){Book_content.init(book_inside: Book_inside.init(text_book_inside: onebook.book_content?.text_book_inside, title_book_inside: onebook.book_content?.title_book_inside))
                    } label: {
                        ZStack {
                            Image(onebook.top_image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .edgesIgnoringSafeArea(.all)
                            VStack(spacing:0){
                                Spacer()
                                VStack(spacing: 5) {
                                    Text(onebook.main_title)
                                        .foregroundColor(Color(hex:onebook.color_title))
                                        .font(.system(size: 35))
                                        .multilineTextAlignment(.center)
                                    Text(onebook.top_description)
                                        .foregroundColor(Color(hex:onebook.color_title))
                                        .font(.system(size: 15))
                                }
                                .frame(maxWidth: .infinity)
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [
                                        Color(hex:onebook.gradient_color_first).opacity(0.8),
                                        Color(hex:onebook.gradient_color_second)]),
                                                   startPoint: .top, endPoint: .bottom))
                                .edgesIgnoringSafeArea(.all)
                            }
                            
                            
                        }
                    }
                    
                    
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .never))
            .edgesIgnoringSafeArea(.all)
        }
        .edgesIgnoringSafeArea(.all)

    }
}

//struct Inside_category_Previews: PreviewProvider {
//    static var previews: some View {
//        Text("Abc")
//        //            .sheet(isPresented: .constant(true)) {
//            .sheet(isPresented: .constant(true)) {
//                Inside_category(lib: [
//                    Onebook.init(main_title: "Mały Fabian i jego czarodziejski groch", top_description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s....", top_image: "Inside_category_1", gradient_color_first: "#54772E", gradient_color_second: "#222222", color_title: "#FBD4C7", book_content: Book_inside(text_book_inside: "Jaś", title_book_inside: "XYZ"))
//                ])
//            }
//
//    }
//}

// #FBD4C7
//NavigationView

//NavigationLink + ActionButton


//NavigationLink {destination: Book_content(book_inside: Book_inside(text_book_inside: onebook.book_content?.text_book_inside, title_book_inside: onebook.book_content?.title_book_inside))
//
//Book_content.init(book_inside: Book_inside.init(text_book_inside: "**Lorem** Ipsum**", title_book_inside: "Lorem"))
