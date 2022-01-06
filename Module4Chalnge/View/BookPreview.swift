//
//  BookPreview.swift
//  Module4Chalnge
//
//  Created by Muhammadayubxon on 04/01/22.
//

import SwiftUI

struct BookPreview: View {
    var book:Book
    var body: some View {
        ZStack{
            Rectangle()
                .cornerRadius(10)
                .shadow(color: .gray, radius: 10, x: -5, y: 5)
                .foregroundColor(.white)
            VStack(alignment:.leading){
                HStack{
                    Text(book.title).font(.title)
                    Spacer()
                    if book.isFavourite{
                        Image(systemName: "star.fill").foregroundColor(.yellow)
                    }
                }
                Text(book.author).font(.title2)
                Image("cover\(book.id)")
                    .resizable()
                    .scaledToFit()
            }.padding()
        }
    }
}

struct BookPreview_Previews: PreviewProvider {
    static var previews: some View {
        BookPreview(book: Book())
    }
}
