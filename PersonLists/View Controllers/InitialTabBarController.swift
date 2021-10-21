//
//  InitialTabBarController.swift
//  PersonLists
//
//  Created by Александр Женухин on 21.10.2021.
//

import UIKit

class InitialTabBarController: UITabBarController {
    
    let persons: [Person] = Person.getPersonData()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: persons)
    }
    
    private func setupViewControllers(with persons: [Person]) {
        let personsTableVC = viewControllers?.first as! PersonsTableViewController
        let sectionstableVC = viewControllers?.last as! SectionsTableViewController
        
        personsTableVC.persons = persons
        sectionstableVC.persons = persons
    }

}
