//
//  TabBarController.swift
//  ContactList
//
//  Created by Stanislav Demyanov on 19.06.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    private let contactList = Person.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let contactListVC = viewControllers?.first as! ContactsListTableViewController
        let fullInfoVC = viewControllers?.last as! FullInfoContactsTableViewController
        
        contactListVC.contactList = contactList
        fullInfoVC.person = contactList
    }
}
