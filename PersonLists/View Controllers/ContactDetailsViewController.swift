//
//  ContactDetailsViewController.swift
//  PersonLists
//
//  Created by Александр Женухин on 21.10.2021.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneLabel.text = "Phone number: \(person.phoneNumber)"
        emailLabel.text = "Email address: \(person.email)"
    }

}
