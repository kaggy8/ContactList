//
//  TabBarController.swift
//  ContactList
//
//  Created by Stanislav Demyanov on 19.06.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTransition()
    }
    
    // MARK: - Private methods
    
    private func setTransition() {
        let contactList = Person.shared
        
        let contactListVC = viewControllers?.first as! ContactsListTableViewController
        let fullInfoVC = viewControllers?.last as! FullInfoContactsTableViewController
        
        contactListVC.contactList = contactList
        fullInfoVC.person = contactList
    }
}
