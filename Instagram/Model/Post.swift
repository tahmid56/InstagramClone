//
//  Post.swift
//  Instagram
//
//  Created by Tahmid Akter on 13/10/23.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "This is some test caption for now", likes: 104, imageUrl: "panther", timestamp: Date(), user: User.MOCK_USER[0]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "This is the way", likes: 50, imageUrl: "panther", timestamp: Date(), user: User.MOCK_USER[1]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "Hello there", likes: 68, imageUrl: "panther", timestamp: Date(), user: User.MOCK_USER[2]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "East or west Op is the best", likes: 24, imageUrl: "panther", timestamp: Date(), user: User.MOCK_USER[3]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: "This is some test caption for now", likes: 87, imageUrl: "panther", timestamp: Date(), user: User.MOCK_USER[4]),
    ]
}
