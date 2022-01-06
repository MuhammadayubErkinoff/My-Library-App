//
//  JsonParser.swift
//  Module4Chalnge
//
//  Created by Muhammadayubxon on 04/01/22.
//

import Foundation

class JsonParser{
    static func parse()->[Book]{
        let pathString=Bundle.main.path(forResource: "Data", ofType: "json")
        if let path=pathString {
            let url=URL(fileURLWithPath: path)
            do{
                let data=try Data(contentsOf: url)
                do{
                    let decoder=JSONDecoder()
                    let  decodedFile=try decoder.decode([Book].self,from:data)
                    return decodedFile
                }
                catch{
                    print(error)
                }
            }
            catch{
                print(error)
            }
            
            return [Book]()
        }
        else{
            return [Book]()
        }
    }
}
