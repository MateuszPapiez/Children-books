//
//  Data_Book_Load.swift
//  Book_App
//
//  Created by Mateusz Papież on 29/12/2022.
//

import Foundation
import SwiftUI

struct Book: Codable, Hashable {
    let image: String
    let title: String
    let color: String
    let onebooks: [Onebook]
    
    static let allBook: [Book] = Bundle.main.decode(file: "Ankieta.json")
    static let simplebook: Book = allBook[0]
    
    
}
struct Onebook: Codable, Hashable, Identifiable {
    var id: UUID? = UUID()
    let main_title: String
    let top_description: String
    let top_image: String
    let gradient_color_first: String
    let gradient_color_second: String
    let color_title: String
    let book_content: Book_inside?
    
    private enum CodingKeys: String, CodingKey {
        case main_title = "main_title"
        case top_description
        case top_image
        case gradient_color_first
        case gradient_color_second
        case color_title
        case book_content = "book_format"
    }
}


struct Book_inside: Codable,Hashable {

    let text_book_inside: String?
    let title_book_inside: String?

}

extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
       // guard let loadedData = try? decoder.decode(T.self, from: data) else {
            //fatalError("Could not decode \(file) from bundle.")
        //}
        var loadedData : T?
        do {
            loadedData = try decoder.decode(T.self, from: data)
        } catch {
            loadedData = nil
        }
        
        if let notopcionalloadedData = loadedData {
            return notopcionalloadedData
        }
        else {
            fatalError("Could not decode \(file) from bundle.")
        }
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
