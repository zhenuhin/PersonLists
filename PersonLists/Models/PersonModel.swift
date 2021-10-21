//
//  PersonModel.swift
//  PersonLists
//
//  Created by Александр Женухин on 21.10.2021.
//

struct Person {
    var name: String
    var surname: String
    var phoneNumber: String
    var email: String
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonData() -> [Person] {
        var persons = [Person]()
        let names = DataManager.shared.names
        let surnames = DataManager.shared.surnames
        let phoneNumbers = DataManager.shared.phoneNumbers
        let emails = DataManager.shared.emails
        
        for index in 0..<names.count {
            persons.append(Person(name: names[index],
                                  surname: surnames[index],
                                  phoneNumber: phoneNumbers[index],
                                  email: emails[index]))
        }
        
        return persons.shuffled()
    }
}
