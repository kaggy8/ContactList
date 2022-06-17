//
//  ContactListTableViewController.swift
//  ContactList
//
//  Created by Stanislav Demyanov on 15.06.2022.
//

import UIKit

class ContactListTableViewController: UITableViewController {
    
    // MARK: - Private properties
    private var contactList = Person.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = contactList[indexPath.row]
        
        content.text = person.firstName + " " + person.lastName
        
        cell.contentConfiguration = content
        return cell
    }
}
