//
//  Api.swift
//  Byte
//
//  Created by Sivakumar R on 16/02/23.
//

import Foundation
import Alamofire



class Api{

    
    func loginAPICall(userName:String,password:String,complition:@escaping(Bool) -> ()){
        var urlRequest = URLRequest(url: URL(string: "http://restapi.adequateshop.com/api/authaccount/login")!)
        urlRequest.httpMethod = "POST"
        urlRequest.headers = ["Content-Type":"application/json"]
        
        do{
            urlRequest.httpBody = try JSONSerialization.data(withJSONObject: ["email":userName,"password":password])
        }catch{
            print(error.localizedDescription)
        }
        
       let task =  URLSession.shared.dataTask(with: urlRequest) { data1, resoponce1, erro1 in
           if erro1 != nil {
               do {
                   print(resoponce1 as Any)
                   print(data1 as Any)
                   let json = try! JSONSerialization.jsonObject(with: data1! ,options: [])
                   print( json)
               }catch{
                   print(error.localizedDescription)
               }
           }else{
               
           }
      
        }
        task.resume()
  
    }
    
}
