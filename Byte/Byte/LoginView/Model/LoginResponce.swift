//
//  LoginResponce.swift
//  Byte
//
//  Created by Sivakumar R on 16/02/23.
//

import Foundation


struct LoingData:Codable {
    let code:Int
    let message:String
    let data: logindata
}

struct logindata:Codable {
    let Id : Int
    let Name : String
    let Email : String
    let Token : String
}

