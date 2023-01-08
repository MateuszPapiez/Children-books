//
//  Main_view.swift
//  Book_App
//
//  Created by Mateusz Papież on 21/12/2022.
//

import SwiftUI


//struct Book: Identifiable, Decodable {
//let id: Int
//let image: String
//let title: String
//let one_book: String
//let t2: String
//let t3: String
//var [0]: String
//var [1]: String
//let cover: String
//let discriptin: String
//let color: String
//var file: F
//}

//var book_list : [Book] = [
//Book(image: "M_I_Animal", title: "Zwierzęta",color: Color(App_Color.menu_color_animal)),
//Book(image: "M_I_Moral", title: "Z Morałem",color: Color(App_Color.menu_color_moral)),
// Book(image: "M_I_Dragon", title: "Smoki",color: Color(App_Color.menu_color_dragon)),
//Book(image: "M_I_Queen", title: "Księżniczki",color: Color(App_Color.menu_color_queen)),
//Book(image: "M_I_Coming", title: "",color: Color(App_Color.menu_color_animal)),

//]


struct Main_view: View {
    
    @State private var isShowingSheet = true
    
    var library: [Book] = Book.allBook
    let lib: [Onebook]
    
    private let columns = [GridItem(.adaptive(minimum: 170))]
    
    private let nColumn = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    private let flexColumn = [
        GridItem(.fixed(180)),
        GridItem(.fixed(180)),
    ]
    
    var body: some View {
        ZStack {
            Color(App_Color.background_color)
                .edgesIgnoringSafeArea(.all)
            //ZStack{
            ScrollView {
                Spacer()
                Spacer()
                LazyVGrid (columns: flexColumn, spacing: 20){
                    ForEach(library, id: \.title) { lib in
                        Button (action: {isShowingSheet = true})
                        {
                            //NavigationLink (destination: Inside_category(lib: lib.onebooks)){ //sheet
                            VStack {
                                ZStack {
                                    VStack {
                                        Image("\(lib.image)")
                                        //Image("M_I_Animal")
                                            .resizable()
                                            .frame(width: 170, height: 170)
                                            .cornerRadius(35)
                                    }
                                }
                                .overlay(Text("\(lib.title)")
                                         //.foregroundColor(b.color)
                                    .foregroundColor(Color(hex:"\(lib.color)"))
                                         //.foregroundColor(Color(b.color))
                                    .bold(), alignment: .bottom)
                                .font(.custom("AmaticSC-Bold", size: 28))
                                
                            }
                        }
                        .sheet(
                            isPresented: $isShowingSheet,
                            onDismiss: {
                                isShowingSheet = false
                            }
                        ){
                            Inside_category(lib: lib.onebooks)
                        }
                    }
                    
                }
            }
        }
    }
}




struct Main_view_Previews: PreviewProvider {
    static var previews: some View {
        Main_view(image: library.image:"asas",)
    }
}
