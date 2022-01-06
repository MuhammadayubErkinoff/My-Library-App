//
//  Staging.swift
//  Module4Chalnge
//
//  Created by Muhammadayubxon on 05/01/22.
//

import SwiftUI

struct Staging: View {
    @EnvironmentObject var model:BookModel
    var book:Book
    @State var rate=2
    var body: some View {
        VStack{
            Spacer()
            NavigationLink(destination:BookContentView(book: book)){
                VStack{
                    Text("Read Now!")
                        .font(.title)
                        .fontWeight(.light)
                    Image("cover\(book.id)")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal,60)
                }
            }.foregroundColor(.black)
            Spacer()
            Text("Mark for later!")
                .font(.headline)
                .padding(.top)
            Button(action:{
                model.updateFavourite(id:book.id)
            }){
                Image(systemName: book.isFavourite ? "star.fill" : "star")
                    .foregroundColor(.yellow)
            }.padding(5)
            Text("Rate Amazing Words")
            Picker("", selection: $rate){
                Text("1").tag(0)
                Text("2").tag(1)
                Text("3").tag(2)
                Text("4").tag(3)
                Text("5").tag(4)
            }
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of: rate, perform: {value in
                model.updateRating(id: book.id, newRating: rate)
            })
            Spacer()
            Spacer()
        }
        .onAppear{ rate=book.rating}
        .navigationBarTitle(book.title)
    }
}

struct Staging_Previews: PreviewProvider {
    static var previews: some View {
        Staging(book: Book()).environmentObject(BookModel())
    }
}
