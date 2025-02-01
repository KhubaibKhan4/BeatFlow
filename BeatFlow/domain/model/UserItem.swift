//
//  UserItem.swift
//  BeatFlow
//
//  Created by Muhammad Khubaib Imtiaz on 01/02/2025.
//

import SwiftUI

struct Users : Codable {
    var users: [UserItem]
}

struct UserItem: Identifiable,Codable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
}
