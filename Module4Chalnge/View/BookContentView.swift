//
//  BookContentView.swift
//  Module4Chalnge
//
//  Created by Muhammadayubxon on 04/01/22.
//

import SwiftUI

struct BookContentView: View {
    var book:Book
    @State var selection=0;
    var body: some View {
        VStack{
            TabView(selection: $selection){
                ForEach(0..<book.content.count){index in
                    VStack{
                        Text(book.content[index]).tag(index)
                        Spacer()
                        Text(String(index+1))
                    }
                }
            }.tabViewStyle(PageTabViewStyle())
            
        }
    }
}

struct BookContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookContentView(book:Book())
    }
}
