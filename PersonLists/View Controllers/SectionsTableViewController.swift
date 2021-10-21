//
//  SectionsTableViewController.swift
//  PersonLists
//
//  Created by Александр Женухин on 21.10.2021.
//

import UIKit

class SectionsTableViewController: UITableViewController {
    
    var persons: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: "phone.fill")
            content.text = persons[indexPath.section].phoneNumber
        case 1:
            content.image = UIImage(systemName: "mail.fill")
            content.text = persons[indexPath.section].email
        default: break
        }
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
