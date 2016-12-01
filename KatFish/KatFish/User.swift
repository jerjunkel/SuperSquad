//
//  User.swift
//  KatFish
//
//  Created by Eashir Arafat on 12/1/16.
//  Copyright © 2016 Jermaine Kelly. All rights reserved.
//
import Foundation
import SwiftyJSON
import Alamofire

class User {
    let gender: String
    let name: String
    let location: String
    let email: String
    let login: String
    let registered: String
    let dob: String
    let phone: String
    let call: String
    let id: String
    let picture: String
    let nat: String
    
    init(gender: String, name: String, location: String, email: String, login: String, registered: String, dob: String, phone: String, call: String, id: String, picture: String, nat: String) {
        self.gender = gender
        self.name = name
        self.location = location
        self.email = email
        self.login = login
        self.registered = registered
        self.dob = dob
        self.phone = phone
        self.call = call
        self.id = id
        self.picture = picture
        self.nat = nat
    }
    
    static func makeUserObjects(from data: Data) -> [User]? {
        var users: [User]? = []
            let json = JSON(data: data)
            
            for user in json["results"].arrayValue {
                    let gender = user["gender"].stringValue,
                       name = user["name"]["first"].stringValue,
                       location = user["location"]["state"].stringValue,
                        email = user["email"].stringValue,
                        login = user["login"]["username"].stringValue,
                        registered = user["registered"].stringValue,
                        dob = user["dob"].stringValue,
                        phone = user["phone"].stringValue,
                        call = user["cell"].stringValue,
                        id = user["id"]["name"].stringValue,
                        picture = user["picture"]["large"].stringValue,
                        nat = user["nat"].stringValue,
                validUser = User(gender: gender, name: name, location: location, email: email, login: login, registered: registered, dob: dob, phone: phone, call: call, id: id, picture: picture, nat: nat)
                users?.append(validUser)
                      /*
                 guard let gender = user["gender"].stringValue,
                                    let name = user["name"] as? String,
                                    let location = user["location"] as? String,
                                    let email = user["email"] as? String,
                                    let login = user["login"] as? String,
                                    let registered = user["registered"] as? String,
                                    let dob = user["dob"] as? String,
                                    let phone = user["phone"] as? String,
                                    let call = json["call"] as? String,
                                    let id = json["id"] as? String,
                                    let picture = json["picture"] as? String,
                                    let nat = json["nat"] as? String
                                     else { return nil }
                                 
                                 let validUser = User(gender: gender, name: name, location: location, email: email, login: login, registered: registered, dob: dob, phone: phone, call: call, id: id, picture: picture, nat: nat)
                                 users?.append(validUser)
                 
                */
            }
        
        //
        
        return users
        
    }
    //for commit
}
