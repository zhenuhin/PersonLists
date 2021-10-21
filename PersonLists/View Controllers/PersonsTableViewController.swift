//
//  PersonsTableViewController.swift
//  PersonLists
//
//  Created by Александр Женухин on 21.10.2021.
//

import UIKit

class PersonsTableViewController: UITableViewController {
    
    var persons: [Person] = []

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = persons[indexPath.row].fullName
        cell.contentConfiguration = content
        return cell
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactDetailsVC = segue.destination as! ContactDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactDetailsVC.person = persons[indexPath.row]
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }


}
