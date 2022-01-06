//
//  ContentView.swift
//  Module4Chalnge
//
//  Created by Muhammadayubxon on 04/01/22.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var model:BookModel
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack{
                    ForEach(model.books){book in
                        NavigationLink(destination: Staging(book: book)){
                            BookPreview(book: book)
                        }.padding().foregroundColor(.black)
                    }
                }
            }
            .navigationTitle("My Library")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(BookModel())
    }
}
