//
//  Person.swift
//  MVP+C
//
//  Created by Максим Лопатин on 09.06.2023.
//

import Foundation

struct Comment: Decodable {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
}
