//
//  Main_view.swift
//  Book_App
//
//  Created by Mateusz Papież on 21/12/2022.
//

import SwiftUI


struct OneContainer : Identifiable {
    let id: UUID = UUID()
    let onebooks: [Onebook]
}


struct Main_view: View {
    
    @State private var isShowingSheet = true
    
    var library: [Book]
    
    private let columns = [GridItem(.adaptive(minimum: 170))]
    
    private let nColumn = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    private let flexColumn = [
        GridItem(.fixed(180)),
        GridItem(.fixed(180)),
    ]
    
    @State private var selectedbook : OneContainer? = nil
    
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
                        Button (action: {
                            selectedbook = OneContainer.init(onebooks: lib.onebooks)
                        })
                        {
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
                    }.sheet(
                        item: $selectedbook) { data in
                                    Inside_category(lib: data.onebooks)
                                }
                    
                }
            }
        }
    }
}

//struct Main_view_Previews: PreviewProvider {
//    static var previews: some View {
//        Main_view()
//    }
//}
