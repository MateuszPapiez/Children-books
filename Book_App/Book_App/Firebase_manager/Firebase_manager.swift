//
//  Firebase_manager.swift
//  Book_App
//
//  Created by Mateusz Papież on 18/02/2023.
//

import Foundation
import FirebaseCore
import FirebaseFirestore

struct FirebaseM {
    
    //var dbBook = [Book]()
//    let onebooks = [Onebook]()
    
    
    var db = Firestore.firestore()
    
    func fetchData() {
        //let collection = db.collection("Data_Books")
        let collection = db.collection("Data_Books")
        
        collection.getDocuments { (document, error) in
            if let document_not_nil = document {
                let dataDescription = document.data().map(String.init(describing:)) ??
                print("Document data: \(document_not_nil)")
        
            } else {
                print("Document does not exist")
            }
            }
        
            }
        }

    

    

//            self.dbBook = documents.map { (queryDocumentSnapshot) -> Book in
//                let data = queryDocumentSnapshot.data()
//                let title = data["title"] as? String ?? ""
//                let image = data["image"] as? String ?? ""
//                let color = data["color"] as? String ?? ""
//                _ = data["id"] as? String ?? ""
//                let main_title = data["main_title"] as? String ?? ""
//                let top_description = data["top_description"] as? String ?? ""
//                let top_image = data["top_image"] as? String ?? ""
//                let gradient_color_first = data["gradient_color_first"] as? String ?? ""
//                let gradient_color_second = data["gradient_color_second"] as? String ?? ""
//                let color_title = data["color_title"] as? String ?? ""
//                let text_book_inside = data["text_book_inside"] as? String ?? ""
//                let title_book_inside = data["title_book_inside"] as? String ?? ""
//
//
//                return Book(image: image, title: title, color: color, onebooks:[Onebook.init(main_title: main_title, top_description: top_description, top_image: top_image, gradient_color_first: gradient_color_first, gradient_color_second: gradient_color_second, color_title: color_title, book_content: Book_inside.init(text_book_inside: text_book_inside, title_book_inside: title_book_inside))])
//            }

//        collection.getDocuments { (document, error) in
//            if let document_not_nil = document {
//
//                let dataDescription = document.data().map(String.init(describing:)) ??
//                //
////            if let document_not_nil = document {
//                print("Document data: \(document_not_nil)")
//
//            } else {
//                print("Document does not exist")
//
//            }
            
//            self.get_books = document.map { (QueryDocumentSnapshot) -> Book in
//                let data = QueryDocumentSnapshot.data()
//
//                let title = data["title"]
//                let color = data["color"]
//
//                let book = Book(title: title, color: color)
//                return book
                
