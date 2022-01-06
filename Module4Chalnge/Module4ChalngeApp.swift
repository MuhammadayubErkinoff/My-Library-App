//
//  Module4ChalngeApp.swift
//  Module4Chalnge
//
//  Created by Muhammadayubxon on 04/01/22.
//

import SwiftUI

@main
struct Module4ChalngeApp: App {
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(BookModel())
        }
    }
}
