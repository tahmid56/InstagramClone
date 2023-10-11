//
//  User.swift
//  Instagram
//
//  Created by Tahmid Akter on 11/10/23.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
    
}

extension User{
    static var MOCK_USER:[User] = [
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: "panther", fullName: "Bruce Wayne", bio: "Dark knight matter", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Venom", profileImageUrl: "panther", fullName: "Eddie Brock", bio: "Venommmmm", email: "eddiebrock@gmail.com"),
        .init(id: NSUUID().uuidString, username: "spiderman", profileImageUrl: "panther", fullName: "peter parker", bio: "New york city rocks", email: "peterparker@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Clark kent", profileImageUrl: "panther", fullName: "Clark Kent", bio: "Superman is my enemy", email: "clark@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Ironman", profileImageUrl: "panther", fullName: "Tony Stark", bio: "Engineer everything", email: "tonystark@gmail.com"),
    ]
}
