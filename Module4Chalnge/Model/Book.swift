//
//  Book.swift
//  Module4Chalnge
//
//  Created by Muhammadayubxon on 04/01/22.
//

import Foundation

struct Book:Decodable,Identifiable{
    var title = "Title"
    var author = "Author"
    var isFavourite = false
    var currentPage = 0
    var rating = 0
    var id = 1
    var content=[String]()
}
