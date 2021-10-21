//
//  DataManager.swift
//  PersonLists
//
//  Created by Александр Женухин on 21.10.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let names = ["Alex", "John", "Bob",
                 "Tim", "Sharon", "Steven",
                 "Ted", "Carl", "Bruce", "Allan"]
    let surnames = ["Robertson", "Butler", "Murphy",
                    "Smith", "Black", "Brown",
                    "Dow", "Williams", "Jankin", "Pennyworht"]
    let phoneNumbers = ["8-999-555-66-77", "8-914-444-33-22", "8-993-999-99-99",
                        "8-333-444-55-67", "8-995-335-44-55", "8-932-000-40-55",
                        "8-966-888-88-88", "8-943-566-66-66", "8-333-333-33-33", "8-990-000-00-00"]
    let emails = ["zz@test.com", "aa@test.com", "vv@test.com",
                  "hh@test.ru", "gg@test.com", "ll@test.com",
                  "rr@test.com", "oo@test.ru", "tt@test.ru", "yy@test.ru"]
    
    private init() {}
}
