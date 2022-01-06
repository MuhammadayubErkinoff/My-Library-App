//
//  File.swift
//  Module4Chalnge
//
//  Created by Muhammadayubxon on 04/01/22.
//

import Foundation
import SwiftUI
 
class BookModel:ObservableObject{
    @Published var books=[Book]()
    
    init(){
        self.books=JsonParser.parse()
    }
    
    func updateFavourite(id:Int){
        self.books[id-1].isFavourite=(!books[id-1].isFavourite)
    }
    func updateRating(id:Int,newRating:Int){
        self.books[id-1].rating=newRating
    }
}

