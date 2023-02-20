//
//  Book_content.swift
//  Book_App
//
//  Created by Mateusz Papież on 02/02/2023.
//

import SwiftUI


struct BookInsideState {
    let title: String?
    let text_content: AttributedString?
    init(title: String?, text_content: String) {
        self.title = title
        self.text_content =  try? AttributedString(markdown: text_content)
    }
}


                            

struct Book_content: View {
    
    var book_inside: Book_inside
    static let text: AttributedString? = try? AttributedString.init(markdown: "**Słoń z porcelany**")
    //static let text: AttributedString? = try? AttributedString.init(markdown: "**ABC** Ipsum")
    
    init(book_inside: Book_inside) {
        self.book_inside = book_inside
    }
    
    var body: some View {
        
        ZStack{
            Color(App_Color.background_color)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                //Text(Book_content.text!)
                    //.multilineTextAlignment(.leading)
                Text(book_inside.text_book_inside!)
                    .padding(20)
    
            }
            .foregroundColor(Color(App_Color.tab_bar_yellow))
        }
        .navigationTitle(book_inside.title_book_inside!) //!//
        
        //.navigationBarTitleTextColor(Color.red)
    }
}



//Image("1_1_inside")
//            .resizable()
//            .scaledToFit()
//            .frame(width: 200, height: 200)

struct Book_content_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            Book_content.init(book_inside: Book_inside.init(text_book_inside: "Jaś i Zosia bardzo lubili odwiedzać babcię Stefcię. Babcia miała wiele prawdziwych skarbów: kolorowe pocztówki, maszynę do pisania i albumy ze starymi zdjęciami. Jednak najciekawszym eksponatem w jej domu była figurka słonia z porcelany. Słoń zajmował honorowe miejsce na szafce i babcia często powtarzała, że przynosi jej szczęście. Pewnego dnia, gdy babcia przyrządzała w kuchni obiad, Jaś i Zosia zakradli się do jej sypialni. Z ciekawością zerknęli na figurkę słonia. Czy rzeczywiście była magiczna?- Obejrzymy ją sobie, a potem odstawimy na miejsce. – Zaproponował Jaś. – Może dzięki temu i nam przyniesie trochę szczęścia.Chłopiec ostrożnie zdjął figurkę z szafki. Słoń był dość ciężki, ważył ze trzy kilo \n i coś brzęczało w jego wnętrzu. Czy to były monety? Jaś mocno nim potrząsnął. Niestety, w tej chwili słoń wyślizgnął mu się z ręki, a potem z hukiem uderzył o podłogę i rozpadł na wiele kawałków. Jaś i Zosia z przerażeniem zerknęli na zniszczoną porcelanę. Potłukli magicznego słonia! Babcia nie mogła się o tym dowiedzieć! - Dlatego nic jej nie powiemy! – Postanowili. – Może pomyśli, że to kot Bonifacy strącił słonia ogonem.", title_book_inside: "Slon"))
        }
    }
}
